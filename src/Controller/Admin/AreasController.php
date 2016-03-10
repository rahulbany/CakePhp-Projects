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

class AreasController extends AppController
{	

	public function beforeFilter(Event $event)
	{
		//$this->Auth->allow(['checkuseralreadyexist','checkemailalreadyexist']);
		parent::beforeFilter($event);
	}
	
	    public function add() {
				 $zipCodsTable = TableRegistry::get(' ZipCodes');
				if ($this->request->is('post')) {
						$newRow = $zipCodsTable->newEntity();
						$newRow->zip_code = $this->request->data['zip_code'];
						$newRow->area_name = $this->request->data['area_name'];
						if ($zipCodsTable->save($newRow)) {
							$this->Flash->success(__('You has been successfully added the service area'));
							return $this->redirect(['action' => 'index']);
						}
				}		 
		} 

		public function index() {
			$zipCodsTable = TableRegistry::get('ZipCodes');
			$getAllData = $zipCodsTable->find('all');
			$this->set('getAllData',$getAllData);	
		}
		
		/* public function edit($id=null) {
			$zipCodsTable = TableRegistry::get('ZipCodes');
			$getArea = $zipCodsTable->get($id);
			if ($this->request->is(['post','put'])) {
				$rowUpdate = $zipCodsTable->patchEntity($getArea, $this->request->data);
				//$city->updated = date("Y-m-d H:i:s");
				if ($zipCodsTable->save($rowUpdate)) {
					$this->Flash->success(__('City has been updated.'));
					return $this->redirect(['action' => 'index']);
				}
			}
			$this->set('getArea', $getArea);
		} */
		
		public function delete($id=null) {
			$zipCodsTable = TableRegistry::get('ZipCodes');
			$findRow = $zipCodsTable->get($id);
			if ($zipCodsTable->delete($findRow)) {
				$this->Flash->success(__('The Area has been deleted'));
				return $this->redirect(['action' => 'index']);
			}
		}
		
}
