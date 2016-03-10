<?php
namespace App\Controller\Admin;
use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use Cake\Datasource\ConnectionManager;

class DashboardController extends AppController
{	
	
	public function index() 
	{
		/*** Page layout is neccessary for each page ***/
		$title = 'Dashboard';
		$this->set('admintitle_for_page',$title);
		/*******************************************************/
		 $userTable = TableRegistry::get('Users');
		 $scheduleServiceTable = TableRegistry::get('ScheduledServices');
		 $query = $userTable->find('all')->where(['user_type'=>'partner']);
		 $totalPartner = $query->count();
		 $customerList = $userTable->find('all')->where(['user_type'=>'customer']);
		 $customerCount = $customerList->count();
		 $getNewCustomer = $userTable->find('all')->where(['DATE(created_at)  BETWEEN DATE_SUB( CURDATE( ) ,INTERVAL  1 MONTH ) AND CURDATE( )','user_type'=>'customer']);
		 $newCustomerCount =  $getNewCustomer->count();
		 $getOpenJobs = $scheduleServiceTable->find('all')->where(['status'=>(int)1]);
		 $getOpenJobsCount = $getOpenJobs->count();
				$this->set('partnerCount',$totalPartner);	
				$this->set('customerCount',$customerCount);	
				$this->set('newCustomerCount',$newCustomerCount);	
				$this->set('getOpenJobsCount',$getOpenJobsCount);	
	}
	
	public function partnerList() {
		if($this->request->data['data'] == 'partner') {
			echo "true";
			exit;
		}
			exit;		
	}
	public function customerList() {
		if($this->request->data['data'] == 'customer') {
			echo "true";
			exit;
		}
			exit;		
	}
	
	public function newCustomer() {
		if($this->request->data['data'] == 'new_customer') {
			echo "true";
			exit;
		}
			exit;		
	}
	public function openJob() {
		if($this->request->data['data'] == 'open_job') {
			echo "true";
			exit;
		}
			exit;		
	}
}