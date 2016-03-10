<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link      http://cakephp.org CakePHP(tm) Project
 * @since     0.2.9
 * @license   http://www.opensource.org/licenses/mit-license.php MIT License
 */
namespace App\Controller\Admin;
use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use Cake\Utility\Text;
use Cake\Network\Exception\InternalErrorException;
use Cake\I18n\Time;
use Cake\Network\Email\Email;
use Cake\Utility\Security;
use Cake\Routing\Router;
use Cake\View\Helper\HtmlHelper;
use Cake\Auth\DefaultPasswordHasher;

class CustomersController extends AppController
{	

	public function beforeFilter(Event $event)
	{
		$this->Auth->allow(['checkuseralreadyexist','checkemailalreadyexist']);
		parent::beforeFilter($event);
	}


public function add() 
{
	 $this->loadModel('Users');
	$user = $this->Users->newEntity();
	if ($this->request->is('post')) {
		$this->request->data['user_type'] = 'customer';	
		$this->request->data['created_at'] = date("Y-m-d H:i:s");
		$this->request->data['referal_code'] = $user->generateCode();
		$user = $this->Users->patchEntity($user, $this->request->data);
		if ($this->Users->save($user)) {
			 $this->Flash->success('The user has been saved.');
			 return $this->redirect(['action' => 'add']);
		} else {
			//$this->Flash->error('You could n\'t be registered. Please, try again.');
				$this->Flash->success(__('Please fill all details first !'));
				return $this->redirect(['action' => 'add']);
		}
	}
	$this->set(compact('user'));
	$this->set('_serialize', ['user']); 
}	

public function index() 
{
	$this->loadModel('Users');
	$allCustomer = $this->Users->find('all', ['conditions' => ['Users.user_type' =>'customer'],['limit' => 10,'order' => 'Users.id DESC']]);
	$this->set('customer', $allCustomer);
}

function checkuseralreadyexist()
{
		$userTable = TableRegistry::get('Users');
		$findUserName =  $_REQUEST['login_name'];
		 $getUse =  $userTable->find()->where(['login_name'=>$findUserName])->first();
		  if(count($getUse) > 0) {
			echo 'false';
		}
		else{
			echo 'true';
		}  
		$this->autoRender = false; 
}
	
	function checkemailalreadyexist(){
		$userTable = TableRegistry::get('Users');
		$findEmail =  $_REQUEST['email'];
		//echo $findEmail;
		 $getUse =  $userTable->find()->where(['email'=>$findEmail])->first();
	  if(count($getUse) > 0){
			echo 'false';
		}
	else{
			echo 'true';
		}   
		$this->autoRender = false; 
	}
	
public function creditCardsInfo($id=null)
{	
		$userID = $id; 
		$userTable = TableRegistry::get('Users');
		$customersTable = TableRegistry::get('Customers');
		$monthTable = TableRegistry::get('Months');
		$allMonth = $monthTable->find('all');
		$addressTable = TableRegistry::get('Addresses');
		$stateListTable = TableRegistry::get('StateLists');
		$creditCardsTable = TableRegistry::get('CreditCards');
		$getCreditInfo = $creditCardsTable->find('all')->where(['user_id'=>$userID])->contain(['Users']);
		$allState = $stateListTable->find('all');
		$getPropertyList = $addressTable->find('all')->where(['user_id'=>$userID])->contain(['StateList']);
		//debug($getPropertyList->toArray());exit;
		$customerCreditInfo = $customersTable->find()->where(['user_id'=>$userID])->first();	
		//$customerInfo = $userTable->get($id, ['contain' => ['Addresses']]);
		$customerInfo = $userTable->find()->contain([
			'Addresses' => function ($q) {
			   return $q
					->where(['Addresses.status' => (int)1]);
			}
		])->where(['Users.id'=>$id])->first();
		
		//echo $customerInfo['addresses'][0]->street_address;
		//echo $customerInfo['addresses'][0]->city;
		//debug($customerInfo);exit;
		
		if ($this->request->is('post'))
		{
			 $user = $userTable->patchEntity($customerInfo, $this->request->data,  ['associated'=>  ['Addresses']]);
			 if ($userTable->save($user, ['associated'=> ['Addresses']])) {
					  if(!empty($this->request->data['street_address'])) {
						$address = $this->request->data['street_address'];
					} else {
						$address = $customerInfo->address->street_address;
					}
					if(!empty($this->request->data['city'])) {
						$city = $this->request->data['city'];
					} else {
						$city = $customerInfo->address->city;
					}
					if(!empty($this->request->data['zip_code'])) {
					$zip_code = $this->request->data['zip_code'];
					} else {
					$zip_code = $customerInfo->address->zip_code;
					}
					if(!empty($this->request->data['state_id'])) {
						$state_id =  $this->request->data['state_id'];
					} else {
						$state_id =  $customerInfo->address->state_id;
					}
					@$custID = $customerInfo['addresses'][0]->id;
					if(!empty($custID)) {
							$custData = $addressTable->get($custID); 
							$custData->street_address = $address;
							$custData->city = $city;
							$custData->zip = $zip_code;
							$custData->state_id = $state_id;
							$addressTable->save($custData); 
					} else {
						$newRow = $addressTable->newEntity();
						$newRow->street_address = $address;
						$newRow->city = $city;
						$newRow->zip = $zip_code;
						$newRow->state_id = $state_id;
						$newRow->user_id = $userID;
						$addressTable->save($newRow);
					}	
				echo "true";exit;
            }
		}
		$this->set('customerInfo',$customerInfo);
		$this->set('allState',$allState);
		$this->set('userID',$userID);
		$this->set('allMonth',$allMonth);
		$this->set('customer_info',$customerCreditInfo);
		$this->set('getCreditInfo',$getCreditInfo);
		$this->set('getPropertyList',$getPropertyList);
}

public function paymenInfo($id=null)
{
	if($this->request->is('post'))
	{
			$creditCardsTable = TableRegistry::get('CreditCards');
			$userId = $id;
			$newRow = $creditCardsTable->newEntity();
			$newRow->user_id = $userId;
			$newRow->credit_card_no = $this->request->data['credit_card_no'];
			$newRow->cvv = $this->request->data['cvv'];
			$newRow->expire_month_id = $this->request->data['expire_month_id'];
			$newRow->expire_year = $this->request->data['expire_year'];
			$newRow->neme_of_the_card = $this->request->data['neme_of_the_card'];
			$newRow->created_at = date('Y-m-d H:i:s');
			if ($creditCardsTable->save($newRow)) {
					echo "one";exit;
			} 
	}
	exit;
} 

public function stripeUpdate($id=null)
{
	if($this->request->is('post'))
	{
			$customerTable = TableRegistry::get('Customers');
			$userId = $id;
			$query = $customerTable->query();
					$query->update()
						->set(['stripe_id' => $this->request->data['stripe_id']])
						->where(['user_id' => $userId])
						->execute();
				if($query) {
					echo "one"; exit;
				}				
	}
	exit;
}

/* public function credit($id=null) {
	$userID = $id;
	$creditCardsTable = TableRegistry::get('CreditCards');
	$getCreditInfo = $creditCardsTable->find('all')->where(['user_id'=>$userID])->contain(['Users']);
	if(!empty($getCreditInfo)) {
			echo json_encode($getCreditInfo);
			exit;
	} else {
		echo "no";
	}
	
}  */


}