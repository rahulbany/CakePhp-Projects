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

class UsersController extends AppController
{	

	 public function beforeFilter(Event $event)
	{
		//parent::beforeFilter($event);
		$this->Auth->allow(['checkuseralreadyexist','checkemailalreadyexist','forgot_pass','reset','login']);
		//parent::beforeFilter($event);
	} 
	//orgot_pass','reset',	
	public function login() {
		/*** Page layout is neccessary for each page ***/
		$this->viewBuilder()->layout('');
		//$title = 'Login';
		//$this->set('admintitle_for_page',$title);
	//	$this->viewBuilder()->layout('adminLogin');
		/*******************************************************/
		if ($this->request->is('post')) { 
			$user = $this->Auth->identify();
			//debug($user);
			if ($user) {
				if($user['user_type']=='admin'){
					$this->Auth->setUser($user);
					return $this->redirect($this->Auth->redirectUrl());
				}
				else{
					$this->Flash->error(__('Please enter only admin detail'),'default',[],'auth');
				}
			} 
			else {
				$this->Flash->error(__('Username or password is incorrect'),'default',[],'auth');
			}
		}
	}
	

	
	public function logout() {
	return $this->redirect($this->Auth->logout());
	}
	
	public function index() {
		/*** Page layout is neccessary for each page ***/
		$title = 'Profile';
		$this->set('admintitle_for_page',$title);
		/*******************************************************/
		$this->viewBuilder()->layout('admin');
		$this->loadModel('Users');
	    $customer = $this->Users->find('all', ['conditions' => ['Users.user_type' =>'admin'],['limit' => 10,'order' => 'Users.created_at DESC']]);
		$this->set('customers', $customer);
		
			$loguser = $this->request->session()->read('Auth.User');
			$id = $loguser['id'];
			$userTable = TableRegistry::get('Users');
			$userInfo = $userTable->get($id);
			$this->set('logedinUser',$userInfo); 
		
		
	}
	
	public function add()
	{
		$this->viewBuilder()->layout('admin');
		$user = $this->Users->newEntity();
		if ($this->request->is('post')) {
			$this->request->data['user_type'] = 'admin';	
			$this->request->data['created_at'] = date("Y-m-d H:i:s");
			$this->request->data['referal_code'] = $user->generateCode();
			$user = $this->Users->patchEntity($user, $this->request->data);
			if ($this->Users->save($user)) {
				 $this->Flash->success('The user has been saved.');
				 return $this->redirect(['action' => 'index']);
			} else {
				$this->Flash->error('You could n\'t be registered. Please, try again.');
			}
		}
		$this->set(compact('user'));
		$this->set('_serialize', ['user']);
		
			$loguser = $this->request->session()->read('Auth.User');
			$id = $loguser['id'];
			$userTable = TableRegistry::get('Users');
			$userInfo = $userTable->get($id);
			$this->set('logedinUser',$userInfo); 
		
	}	
		
	public function edit($id){
		$this->loadModel('Users');
		$user = $this->Users->get($id, [
			'contain' => []	
		]);
		if ($this->request->is(['patch', 'post', 'put'])) {
			$user = $this->Users->patchEntity($user, $this->request->data);
			if ($sa = $this->Users->save($user)) {
				$this->Flash->success('The user has been saved.');
				return $this->redirect(['action' => 'index']);
			} else {
				$this->Flash->error('The user could not be saved. Please, try again.');
			}
		}
		$this->set('user', $user);	
	}	

	public function view($id = null) {
		$user = $this->Users->get($id, [
			'contain' => []
		]);
		$this->set('user', $user);
		$this->set('_serialize', ['user']);
	}		
	
	public function delete($id = null){
		$this->request->allowMethod(['post', 'delete']);
		$user = $this->Users->get($id);
		if ($this->Users->delete($user)) {
			$this->Flash->success('The user has been deleted.');
		} else {
			$this->Flash->error('The user could not be deleted. Please, try again.');
		}
		return $this->redirect(['action' => 'index']);
	}
	
		
	function checkuseralreadyexist(){
		$userTable = TableRegistry::get('Users');
		$findUserName =  $_REQUEST['login_name'];
		 $getUse =  $userTable->find()->where(['login_name'=>$findUserName])->first();
		  if(count($getUse) > 0){
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
		 //$getUse =  $userTable->find()->where(['email'=>$findEmail,'user_type'=>'admin'])->first();
		 $getUse =  $userTable->find()->where(['email'=>$findEmail])->first();
	  if(count($getUse) > 0){
			echo 'false';
		}
		else{
			echo 'true';
		}   
		$this->autoRender = false; 
	}
	
/* public function changepass() 
{
	$loguser = $this->request->session()->read('Auth.User');
	$id = $loguser['id']; 
	$user = TableRegistry::get('Users');
	$userInfo = $user->get($id);
	if ($this->request->is(['post', 'put'])) {
		$d = $this->request->data['opass'];	
		if ((new DefaultPasswordHasher)->check($d, $userInfo->password)) {
			if($this->request->data['new_pass'] != $this->request->data['confirm_pass'] ){
						$this->Session->setFlash("New password and Confirm password field do not match");
						return $this->redirect(['action' => 'changepass']);
			} else {
			$new =	(new DefaultPasswordHasher)->hash($this->request->data['confirm_pass']);
			$query = $user->query();
			$query->update()
					->set(['password' => $new])
					->where(['id' => $id])
					->execute();
				$this->Flash->success(__('Password updated successfully'));
				return $this->redirect(['action' => 'changepass']);
			}             
		}  else {
		$this->Flash->success(__('Your old password did not match'));
		return $this->redirect(['action' => 'changepass']);
		} 
		$this->set('userInfo',$userInfo);	
	}
}
 */
	 
	
	public function forgot_pass () {
	$this->viewBuilder()->layout('adminLogin');
	$userTable = TableRegistry::get('Users');
	if($this->request->is(['put','post'])) {
		if(!empty($this->request->data['email'])) {
		$userData	 = $userTable->findByEmail($this->request->data['email']);
		if(!empty($userData)) {
			$test = json_encode($userData);
			$test1 = json_decode($test);
			$key  = Security::hash(Text::uuid(),'sha512',true);
			$hash = sha1($test1[0]->login_name .rand(0,100));
			$url =  Router::url(['controller' => 'Users', 'action' => 'reset'],true).'/'.$key.'#'.$hash;
			$msg = "<p>Hello ,<br/>".$test1[0]->login_name ."<br/> <a href = '".$url."' >Click Here</a> to reset your password.</p><br /> ";
				$query = $userTable->query();
				$query->update()
					->set(['token' => $key])
					->where(['email' => $this->request->data['email']])
					->execute();
			$email = new Email('default');
			$res = $email->emailFormat('html')
				->from(['partners@terra-app.com' => 'Terraapp User'])
				->to($this->request->data['email'])
				->subject('forgot password')
				->send($msg);
			//	if()
			$this->Flash->success(__('Check Your Email To Reset your password'));
			return $this->redirect(['action' => 'login']);	
			}
			else{
				$this->Session->setFlash("Error Generating Reset link");
			}
		} else {
			$this->Flash->success(__('Please Provide Your Email Address that You used to Register with Us'));
			return $this->redirect(['action' => 'index']);
		}
		
		} 

	}
	
	public function reset($token=null) {
			$this->viewBuilder()->layout('adminLogin');
			$userTable = TableRegistry::get('Users');
			$this->set('mytoken',$token);
			if(empty($token)) {
					$this->Flash->success(__('Token Corrupted '));
					return $this->redirect(['action' => 'reset']);
			}
			if($this->request->is(['put','post']))  {
				//	debug($this->request->data);exit;
					if($this->request->data['new_pass'] != $this->request->data['confirm_pass']) {
						$this->Flash->success(__('Both the passwords are not matching'));
						return $this->redirect(['action' => 'reset']);
					} 
					else {
					$new =	(new DefaultPasswordHasher)->hash($this->request->data['confirm_pass']);
						$query = $userTable->query();
						$query->update()
							->set(['password' => $new])
							->where(['token' => $token])
							->execute();
						$this->Flash->success(__('Your password has been updated successfully'));
						return $this->redirect(['action' => 'login']);	
					}
			} 
	}	  	 
	
	

}