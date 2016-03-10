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
namespace App\Controller;

use Cake\Controller\Controller;
use Cake\Event\Event;
use Cake\Routing\Router;
use Cake\ORM\TableRegistry;
//use Cake\Core\App;

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @link http://book.cakephp.org/3.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller
{
	
	public function initialize()
    {
        $this->loadComponent('Flash');
		$this->loadComponent('Paginator');
        $this->loadComponent('Auth', [
			'loginAction' => '/admin',
			'authError' => 'Did you really think you are allowed to see that?',
			'authenticate' => [
				'Form' => [
					'fields' => ['username' => 'login_name', 'password' => 'password', 'finder' => 'auth']
				]
			],
			//'storage' => 'Session',
            'loginRedirect' => [
                'controller' => 'Dashboard',
                'action' => 'index'
            ],
            'logoutRedirect' => [
                'controller' => 'Users',
                'action' => 'login'
               // 'admin'
            ],
		'storage' => 'Session'
        ]);
    }
	
    /**
     * Before render callback.
     *
     * @param \Cake\Event\Event $event The beforeRender event.
     * @return void
     */

	
	 public function beforeFilter(Event $event)
    {
	//	parent::beforeFilter($event);
		if (isset($this->request->params['prefix']) && $this->request->params['prefix'] == 'admin') {
           $this->viewBuilder()->layout('admin'); 
        } 
		else {
			 $this->viewBuilder()->layout('frontend');
		} 
		//parent::beforeFilter($event);
			$loguser = $this->request->session()->read('Auth.User');
			$id = $loguser['id'];
			$userTable = TableRegistry::get('Users');
			$userInfo = $userTable->get($id);
			//debug($userInfo->toArray());
			$this->set('logedinUser',$userInfo); 
		
    }  
	
 	public function isAuthorized($user)
	{
				if (isset($user['user_type']) && $user['user_type'] === 'admin') {
					return true;
				}
				return false;
	}  
	
}
