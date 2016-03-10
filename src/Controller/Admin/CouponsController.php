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

class CouponsController extends AppController
{	

	public function beforeFilter(Event $event)
	{
		//$this->Auth->allow(['forgot_pass','reset']);
		parent::beforeFilter($event);
	}

public function index()
{
	$this->loadModel('Discounts');
	$userTable = TableRegistry::get('Users');
		$allDisList = $this->Discounts->find('all');
		//debug($allDisList);exit;
		$this->set('discountList',$allDisList);
	/* $allCustomer = $userTable
	 ->find()
	 ->select(['id', 'first_name'])
	 ->where(['user_type ' => 'customer'])
	 ->order(['id' => 'DESC']);
		$this->set('customerList', $allCustomer); */
	
}

public function add()
{  
		$this->loadModel('Discounts');
		$user = $this->Discounts->newEntity();
		if ($this->request->is('post')) {
			//debug($this->request->data);exit;
			$fromDate = $this->request->data['created_at'];
			$toDate = $this->request->data['ending_time'];
			$newFrom = str_replace("/","-",$fromDate);
			$toDate = str_replace("/","-",$toDate);
			$this->request->data['created_at'] = $newFrom;
			$this->request->data['ending_time'] = $toDate;
			//$hj = '10%';
				 //preg_replace("/[^0-9]/","",$hj);
				  $finalAmount = $this->request->data['discount_money_value'];
				 $final = preg_replace("/[^0-9]/","",$finalAmount);
				 $this->request->data['discount_money_value'] = $final; 
				$user = $this->Discounts->patchEntity($user, $this->request->data);
				if ($this->Discounts->save($user)) {
					 $this->Flash->success('Your discount coupons has successfully added.');
					 return $this->redirect(['action' => 'index']);
				} else {
						$this->Flash->success(__('Please try again'));
						return $this->redirect(['action' => 'add']);
				}
		}
		$this->set(compact('user'));
}
 
public function delete($id=null) 
{
		$discountID = $id;
		$discountTable = TableRegistry::get('Discounts');
		$entity = $discountTable->get($discountID);
			if($entity) {
				$discountTable->delete($entity); 
				$this->Flash->success(__('You have successfully deleted this coupon'));
				return $this->redirect(['action' => 'index']);
			} else {
				$this->Flash->success(__('Please try again'));
				return $this->redirect(['action' => 'index']);
			}
}

public function customerList($id=null)
{
		$discountId = $id;
		$this->loadModel('Users');
		$allCustomer = $this->Users->find('all', ['conditions' => ['Users.user_type' =>'customer'],['limit' => 10,'order' => 'Users.id DESC']]);
		$this->set('allCustomer', $allCustomer);
		$this->set('coupon_id',$discountId);
	
}

public function send_coupon($user_id=null,$coupon_id=null)
{
		$userTable = TableRegistry::get('Users');
		$discountsTable = TableRegistry::get('Discounts');
		$customerID = $user_id;
		$couponID = $coupon_id;
		$findEmail =  $userTable->find()->where(['id'=>$customerID])->first(); 
		if(!empty($findEmail)) {
			$userEmail = $findEmail->email;
			$findCoupon = $discountsTable->find()->where(['id'=>$couponID])->first();		
				if(!empty($findCoupon)) {
					$couponValue = $findCoupon->discount_code;
					$disType = $findCoupon->discount_type;	
					$amount = $findCoupon->discount_money_value;
					if($disType == 'amount') {
						$final = '$'.$amount;
					} else {
						$final = $amount.'%';
					}					
					$email = new Email('default');
					$email->from(['test@gmail.com' => 'My Site'])
								->to($userEmail)
								->subject('Discount coupon')
								->send('Hey..! Your Discount coupon value is ' .$couponValue.'. By using this coupon code you get ' .$final. ' discount.');
					if($email) {
							$this->Flash->success(__('You have successfully send mail'));
							return $this->redirect(['action' => 'index']);
					} else {
					$this->Flash->success(__('please try again'));
							return $this->redirect(['action' => 'index']);
					}	 
					
				}	

		}	
$this->autoRender = false;		
							
}

public function send () 
{
			$userTable = TableRegistry::get('Users');
			$discountsTable = TableRegistry::get('Discounts');
			$discount_couponsTable = TableRegistry::get('DiscountCoupons');
			if ($this->request->is(['post','put'])) 
			{
				$all = $this->request->data['customer'];
				$coupun_id = $this->request->data['id'];
				$findCoupon = $discountsTable->find()->where(['id'=>$coupun_id])->first();
				//$fromDate = $findCoupon->created_at;
				 //$endingDate = $findCoupon->ending_time;
				//$todayDate = date('Y-m-d');
			//	if ($endingDate > $todayDate) 
					$couponValue = $findCoupon->discount_code;
					$disType = $findCoupon->discount_type;
					$amount = $findCoupon->discount_money_value;
						 if($disType == 'amount') {
							$final = '$'.$amount;
						} else {
								$final = $amount.'%';
						}
					
				if(count($all) > 0)  {
					foreach($all as $key =>$cust) 
					{
						$findEmail =  $userTable->find()->where(['id'=>$cust])->first(); 
								$userEmail = trim($findEmail->email);
								$email = new Email('default');
											$email->from(['teraapp@gmail.com' => 'My Site'])
														->to($userEmail)
														->subject('Discount coupon')
														->send('Hey..! Your Discount coupon value is ' .$couponValue.'. By using this coupon code you will get ' .$final. ' discount.');
								if($email)
								{	
										$newRow = $discount_couponsTable->newEntity();
										$newRow->user_id = $cust;	
										$newRow->discount_code = $couponValue;
										$newRow->created = date('Y-m-d H:i:s');
										$newRow->status = 1;
										$discount_couponsTable->save($newRow);
								}
					}
				} else {
					$this->Flash->success(__('Please select the customer first'));
					return $this->redirect(['action' => 'index']);	
				}
					$this->Flash->success(__('You have successfully send coupon'));
					return $this->redirect(['action' => 'index']);		
			}
			

}


 
 
 
 
}