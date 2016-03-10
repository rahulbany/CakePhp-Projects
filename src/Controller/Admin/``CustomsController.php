<?php
namespace App\Controller\Admin;
use App\Controller\AppController;
use Cake\Core\Configure;
use Cake\Network\Exception\NotFoundException;
use Cake\View\Exception\MissingTemplateException;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
//use Cake\Database\Connection;

class CustomsController extends AppController
{
	public function beforeFilter(Event $event)
    {
		//$this->Auth->allow(['checkuseralreadyexist','checkemailalreadyexist']);
        parent::beforeFilter($event);
    }
	public function index() 
	{
		
		
	}
		
	
}	