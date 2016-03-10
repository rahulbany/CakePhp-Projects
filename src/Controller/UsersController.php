<?php
namespace App\Controller;
use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;

class UsersController extends AppController
{	

	public function beforeFilter(Event $event)
	{
		parent::beforeFilter($event);
		//$this->Auth->allow(['add']);
	}

	public function add() {
		/*** Page layout is neccessary for each page ***/
		$title = 'Register';
		$this->set('admintitle_for_page',$title);
		$this->viewBuilder()->layout('register');
		/*******************************************************/
		$user = $this->Users->newEntity();
        if ($this->request->is('post')) {
		//debug($this->request->data);exit;
            $user = $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
				/*  $record_id=$user->id;
				$this->Users->updateAll(['user_type' => 'customer'], ['id' => $record_id]); */
                $this->Flash->success(__('The user has been saved.'));
                return $this->redirect(['action' => 'add']);
            }
            $this->Flash->error(__('Unable to add the user.'));
        }
        $this->set('user', $user);
	}
}
?>