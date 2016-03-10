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
use Cake\Mailer\Email;
use Cake\Utility\Security;
use Cake\Routing\Router;
use Cake\View\Helper\HtmlHelper;
use Cake\Auth\DefaultPasswordHasher;

class ReferalsController extends AppController
{	

	public function beforeFilter(Event $event)
	{
		//$this->Auth->allow(['forgot_pass','reset']);
		parent::beforeFilter($event);
	}

public function index()
{
/* $refTable = TableRegistry::get('UserReferals');
$data = $refTable->find('all');
debug($data);
debug($data->toArray());exit; */
}

public function add()
{  
		$loguser = $this->request->session()->read('Auth.User');
		$id = $loguser['id'];
		$this->loadModel('UserReferals');
		$user = $this->UserReferals->newEntity();
		if ($this->request->is('post')) {
			 $characters = 'Ab752ShitsWQ501JKua39mMb';
			$string = '';
			for ($i = 0; $i < 6; $i++) {
				$string .= $characters[rand(0, strlen($characters) - 10)];
			}  
			$this->request->data['user_id'] = $id;
			$this->request->data['refral_code'] = $string;
			$this->request->data['created_at'] = date("Y-m-d H:i:s");
			$user = $this->UserReferals->patchEntity($user, $this->request->data);
			if ($this->UserReferals->save($user)) {
				 $this->Flash->success('The user has been saved.');
				 return $this->redirect(['action' => 'add']);
			} else {
					$this->Flash->success(__('Please fill all details first !'));
					return $this->redirect(['action' => 'add']);
			}
		}
		$this->set(compact('user'));
		$this->set('_serialize', ['user']);  

}

}