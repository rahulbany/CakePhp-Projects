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
use Cake\Core\Configure;
use Cake\Network\Exception\NotFoundException;
use Cake\View\Exception\MissingTemplateException;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use Cake\Datasource\ConnectionManager;
use Cake\Network\Email\Email;
/**
 * Static content controller
 *
 * This controller will render views from Template/Pages/
 *
 * @link http://book.cakephp.org/3.0/en/controllers/pages-controller.html
 */
class JobsController extends AppController
{
	public function beforeFilter(Event $event)
    {
        parent::beforeFilter($event);
    }
	
public function index() 
{
	 $PartnersInfo = TableRegistry::get('PartnerProvidedServices');
	 $jobList =  $PartnersInfo->find('all');
	//	['contain' => 'Yards']);
		$this->set('jobs',$jobList);	
}

public function add()
{
		$yardsTable = TableRegistry::get('Yards');
		//$yardsList =  $yardsTable->find('all');
		if ($this->request->is(['post', 'put'])) {
			$serviceTable = TableRegistry::get('PartnerProvidedServices');
			$newRow = $serviceTable->newEntity();
			$newRow->service = $this->request->data['service_name'];
			//$newRow->amount = $this->request->data['amount'];
			$newRow->job_type = $this->request->data['service_type'];
			//$newRow->yards_id = $this->request->data['service_size'];
			if($serviceTable->save($newRow)) {
				$this->Flash->success(__('Your service successfully added'));
				return $this->redirect(['action' => 'index']);
			} else {
			$this->Flash->success(__('Please try again !'));
			return $this->redirect(['action' => 'add']);
			}
		}
		//$this->set('list',$yardsList);
} 

public function delete($id=null) 
{
	$serviceID = $id;
	$serviceTable = TableRegistry::get('PartnerProvidedServices');
	$entity = $serviceTable->get($serviceID);
	if($entity) {
		$serviceTable->delete($entity); 
		$this->Flash->success(__('You have successfully deleted this service'));
		return $this->redirect(['action' => 'index']);
	} else {
		$this->Flash->success(__('Please try again'));
		return $this->redirect(['action' => 'index']);
	}
}

public function edit($id=null) 
{
	$serviceId = $id;
	$serviceTable = TableRegistry::get('PartnerProvidedServices');
	$serviceList = $serviceTable->get($serviceId);
	$yardsTable = TableRegistry::get('Yards');
	$yardsList =  $yardsTable->find('all');
	$this->set('list',$yardsList);	
		if ($this->request->is(['post', 'put'])) {
			$serviceTable->patchEntity($serviceList, $this->request->data);
			if ($serviceTable->save($serviceList)) {
				$this->Flash->success(__('Your service successfully updated.'));
				return $this->redirect(['action' => 'index']);
			}
				$this->Flash->error(__('Unable to update your service.'));
		} 

	$this->set('new',$serviceList);

}

public function add_yards($id=null)
{
		$service_ID = $id; 
		$serviceYardsTable = TableRegistry::get('ServiceYards');
		$getAmount = $serviceYardsTable->find('all')->where(['pp_service_id'=>$service_ID]);
		$j = json_encode($getAmount);
		$finl = json_decode($j);
		
		if ($this->request->is(['post', 'put']) && !empty($this->request->data())) {
			//debug($this->request->data());exit;
		if(@$this->request->data['update'] == 'update') { 
			$getData = $serviceYardsTable->find('all')->where(['pp_service_id'=>$this->request->data['service_id']]);
					$k = 0;
							foreach($getData as $val) {
								$newId = $val->id;
								$getRow = $serviceYardsTable->get($newId); 
								if($k==0) {	
									$getRow->amount = $this->request->data['small'];
									$serviceYardsTable->save($getRow);
								} else if ($k==1) {
									$getRow->amount = $this->request->data['medium'];
									$serviceYardsTable->save($getRow);
								} else if ($k==3) {
									$getRow->amount = $this->request->data['large'];
									$serviceYardsTable->save($getRow);
								} else if ($k==4) {
									$getRow->amount = $this->request->data['extra_large'];
									$serviceYardsTable->save($getRow);
								}
							$k++;	
							} 
							
					$this->Flash->success(__('Your service has been successfully updated.'));
						return $this->redirect(['action' => 'index']);			
				
		} else {
						for ($j=1;$j<=4;$j++) {
								if ($j==1)  {
									$newrow = $serviceYardsTable->newEntity();
									$newrow->pp_service_id = $this->request->data['service_id'];
									$newrow->amount = $this->request->data['small'];
									$newrow->yard_id = (int)1;
									$newrow->yards = 'small';
									$serviceYardsTable->save($newrow);
								}  elseif ($j==2)  {
									$newrow = $serviceYardsTable->newEntity();
									$newrow->pp_service_id = $this->request->data['service_id'];
									$newrow->amount = $this->request->data['medium'];
									$newrow->yard_id = (int)2;
									$newrow->yards = 'medium';
									$serviceYardsTable->save($newrow);
								}  elseif ($j==3)  {
									$newrow = $serviceYardsTable->newEntity();
									$newrow->pp_service_id = $this->request->data['service_id'];
									$newrow->yard_id = (int)3;
									$newrow->amount = $this->request->data['large'];
									$newrow->yards = 'large';
									$serviceYardsTable->save($newrow);
								}  elseif ($j==4)  {
									$newrow = $serviceYardsTable->newEntity();
									$newrow->pp_service_id = $this->request->data['service_id'];
									$newrow->yard_id = (int)4;
									$newrow->amount = $this->request->data['extra_large'];
									$newrow->yards = 'extra large';
									$serviceYardsTable->save($newrow);
								}				
									
						}
						$this->Flash->success(__('Your service has been successfully updated.'));
						return $this->redirect(['action' => 'index']);			
					}
		}
		$this->set('serviceID',$service_ID);
		$this->set('serviceAmount',$finl);
}


public function openJob()
{
		/* $scheduledServiceTable = TableRegistry::get('ScheduledServices');
		$query = $scheduledServiceTable->find('all', [
		'conditions' => ['ScheduledServices.status'=>1],
		'contain' => ['PartnerProvidedServices','CustomerPropertys']
		]); */	
		//  //PartnerProvidedServices.amount AS `PartnerProvidedServices__amount`, 
	  //PartnerProvidedServices.yards_id AS `PartnerProvidedServices__yards_id`, 
	$connection = ConnectionManager::get('default');
	$results = $connection->execute('SELECT 
	  ScheduledServices.id AS `ScheduledServices__id`, 
	  ScheduledServices.customer_id AS `ScheduledServices__customer_id`, 
	  ScheduledServices.pp_services_id AS `ScheduledServices__pp_services_id`, 
	  ScheduledServices.frequency_customer_id AS `ScheduledServices__frequency_customer_id`, 
	  ScheduledServices.discount_code AS `ScheduledServices__discount_code`, 
	  ScheduledServices.paid_card_id AS `ScheduledServices__paid_card_id`, 
	  ScheduledServices.tip AS `ScheduledServices__tip`, 
	  ScheduledServices.payable_money AS `ScheduledServices__payable_money`, 
	  ScheduledServices.is_done AS `ScheduledServices__is_done`, 
	  ScheduledServices.created_at AS `ScheduledServices__created_at`, 
	  ScheduledServices.updated_at AS `ScheduledServices__updated_at`, 
	  ScheduledServices.status AS `ScheduledServices__status`, 
	  PartnerProvidedServices.id AS `PartnerProvidedServices__id`, 
	  PartnerProvidedServices.service AS `PartnerProvidedServices__service`, 
	  PartnerProvidedServices.job_type AS `PartnerProvidedServices__job_type`, 
	  CustomerPropertys.id AS `CustomerPropertys__id`, 
	  CustomerPropertys.customer_id AS `CustomerPropertys__customer_id`, 
	  CustomerPropertys.scheduled_service_id AS `CustomerPropertys__scheduled_service_id`, 
	  CustomerPropertys.house_no AS `CustomerPropertys__house_no`, 
	  CustomerPropertys.`street-address` AS `CustomerPropertys__street_address`, 
	  CustomerPropertys.zip_code AS `CustomerPropertys__zip_code`, 
	  CustomerPropertys.zip AS `CustomerPropertys__zip`, 
	  CustomerPropertys.city AS `CustomerPropertys__city`, 
	  CustomerPropertys.state_id AS `CustomerPropertys__state_id`, 
	  CustomerPropertys.image_url AS `CustomerPropertys__image_url`, 
	  CustomerPropertys.created_at AS `CustomerPropertys__created_at` 
	FROM 
	  scheduled_service ScheduledServices 
	  LEFT JOIN partner_provided_services PartnerProvidedServices ON PartnerProvidedServices.id = (
		ScheduledServices.pp_services_id
	  ) 
	  LEFT JOIN customer_property CustomerPropertys ON ScheduledServices.id = (
		CustomerPropertys.scheduled_service_id
	  ) 
	WHERE 
	  ScheduledServices.status = 1')->fetchAll('assoc');

		$this->set('openjob',$results);
}

public function completedJob()
{
	/* 	$scheduledServiceTable = TableRegistry::get('ScheduledServices');
		$query = $scheduledServiceTable->find('all', [
		'conditions' => ['ScheduledServices.status'=>0],
		'contain' => ['PartnerProvidedServices','CustomerPropertys','PartnerServiceSchedulings']
		]);
	$this->set('compleated',$query); */
	// PartnerProvidedServices.amount AS `PartnerProvidedServices__amount`, 
  //PartnerProvidedServices.yards_id AS `PartnerProvidedServices__yards_id`, 
	$connection = ConnectionManager::get('default');
	$compleatedJob = $connection->execute('SELECT 
  ScheduledServices.id AS `ScheduledServices__id`, 
  ScheduledServices.customer_id AS `ScheduledServices__customer_id`, 
  ScheduledServices.pp_services_id AS `ScheduledServices__pp_services_id`, 
  ScheduledServices.frequency_customer_id AS `ScheduledServices__frequency_customer_id`, 
  ScheduledServices.discount_code AS `ScheduledServices__discount_code`, 
  ScheduledServices.paid_card_id AS `ScheduledServices__paid_card_id`, 
  ScheduledServices.tip AS `ScheduledServices__tip`, 
  ScheduledServices.payable_money AS `ScheduledServices__payable_money`, 
  ScheduledServices.is_done AS `ScheduledServices__is_done`, 
  ScheduledServices.created_at AS `ScheduledServices__created_at`, 
  ScheduledServices.updated_at AS `ScheduledServices__updated_at`, 
  ScheduledServices.status AS `ScheduledServices__status`, 
  PartnerProvidedServices.id AS `PartnerProvidedServices__id`, 
  PartnerProvidedServices.service AS `PartnerProvidedServices__service`, 
  PartnerProvidedServices.job_type AS `PartnerProvidedServices__job_type`, 
  CustomerPropertys.id AS `CustomerPropertys__id`, 
  CustomerPropertys.customer_id AS `CustomerPropertys__customer_id`, 
  CustomerPropertys.scheduled_service_id AS `CustomerPropertys__scheduled_service_id`, 
  CustomerPropertys.house_no AS `CustomerPropertys__house_no`, 
  CustomerPropertys.`street-address` AS `CustomerPropertys__street_address`, 
  CustomerPropertys.zip_code AS `CustomerPropertys__zip_code`, 
  CustomerPropertys.zip AS `CustomerPropertys__zip`, 
  CustomerPropertys.city AS `CustomerPropertys__city`, 
  CustomerPropertys.state_id AS `CustomerPropertys__state_id`, 
  CustomerPropertys.image_url AS `CustomerPropertys__image_url`, 
  CustomerPropertys.created_at AS `CustomerPropertys__created_at`, 
  PartnerServiceSchedulings.id AS `PartnerServiceSchedulings__id`, 
  PartnerServiceSchedulings.partner_id AS `PartnerServiceSchedulings__partner_id`, 
  PartnerServiceSchedulings.scheduled_service_id AS `PartnerServiceSchedulings__scheduled_service_id`, 
  PartnerServiceSchedulings.is_done AS `PartnerServiceSchedulings__is_done`, 
  PartnerServiceSchedulings.is_cancelled AS `PartnerServiceSchedulings__is_cancelled`, 
  PartnerServiceSchedulings.created_at AS `PartnerServiceSchedulings__created_at`, 
  PartnerServiceSchedulings.updated_at AS `PartnerServiceSchedulings__updated_at` 
FROM 
  scheduled_service ScheduledServices 
  LEFT JOIN partner_provided_services PartnerProvidedServices ON PartnerProvidedServices.id = (
    ScheduledServices.pp_services_id
  ) 
  LEFT JOIN customer_property CustomerPropertys ON ScheduledServices.id = (
    CustomerPropertys.scheduled_service_id
  ) 
  LEFT JOIN partner_service_scheduling PartnerServiceSchedulings ON ScheduledServices.id = (
    PartnerServiceSchedulings.scheduled_service_id
  ) 
WHERE 
  ScheduledServices.status = 0 AND ScheduledServices.is_done = "Done" ')->fetchAll('assoc');

  //debug($compleatedJob);exit;
	$this->set('compleated',$compleatedJob);
	
}

public function runningJob() 
{
//  PartnerProvidedServices.amount AS `PartnerProvidedServices__amount`, 
  //PartnerProvidedServices.yards_id AS `PartnerProvidedServices__yards_id`,
	$connection = ConnectionManager::get('default');
	$compleatedJob = $connection->execute('SELECT 
  ScheduledServices.id AS `ScheduledServices__id`, 
  ScheduledServices.customer_id AS `ScheduledServices__customer_id`, 
  ScheduledServices.pp_services_id AS `ScheduledServices__pp_services_id`, 
  ScheduledServices.frequency_customer_id AS `ScheduledServices__frequency_customer_id`, 
  ScheduledServices.discount_code AS `ScheduledServices__discount_code`, 
  ScheduledServices.paid_card_id AS `ScheduledServices__paid_card_id`, 
  ScheduledServices.tip AS `ScheduledServices__tip`, 
  ScheduledServices.payable_money AS `ScheduledServices__payable_money`, 
  ScheduledServices.is_done AS `ScheduledServices__is_done`, 
  ScheduledServices.created_at AS `ScheduledServices__created_at`, 
  ScheduledServices.updated_at AS `ScheduledServices__updated_at`, 
  ScheduledServices.status AS `ScheduledServices__status`, 
  PartnerProvidedServices.id AS `PartnerProvidedServices__id`, 
  PartnerProvidedServices.service AS `PartnerProvidedServices__service`, 
  PartnerProvidedServices.job_type AS `PartnerProvidedServices__job_type`, 
  CustomerPropertys.id AS `CustomerPropertys__id`, 
  CustomerPropertys.customer_id AS `CustomerPropertys__customer_id`, 
  CustomerPropertys.scheduled_service_id AS `CustomerPropertys__scheduled_service_id`, 
  CustomerPropertys.house_no AS `CustomerPropertys__house_no`, 
  CustomerPropertys.`street-address` AS `CustomerPropertys__street_address`, 
  CustomerPropertys.zip_code AS `CustomerPropertys__zip_code`, 
  CustomerPropertys.zip AS `CustomerPropertys__zip`, 
  CustomerPropertys.city AS `CustomerPropertys__city`, 
  CustomerPropertys.state_id AS `CustomerPropertys__state_id`, 
  CustomerPropertys.image_url AS `CustomerPropertys__image_url`, 
  CustomerPropertys.created_at AS `CustomerPropertys__created_at`, 
  PartnerServiceSchedulings.id AS `PartnerServiceSchedulings__id`, 
  PartnerServiceSchedulings.partner_id AS `PartnerServiceSchedulings__partner_id`, 
  PartnerServiceSchedulings.scheduled_service_id AS `PartnerServiceSchedulings__scheduled_service_id`, 
  PartnerServiceSchedulings.is_done AS `PartnerServiceSchedulings__is_done`, 
  PartnerServiceSchedulings.is_cancelled AS `PartnerServiceSchedulings__is_cancelled`, 
  PartnerServiceSchedulings.created_at AS `PartnerServiceSchedulings__created_at`, 
  PartnerServiceSchedulings.updated_at AS `PartnerServiceSchedulings__updated_at` 
FROM 
  scheduled_service ScheduledServices 
  LEFT JOIN partner_provided_services PartnerProvidedServices ON PartnerProvidedServices.id = (
    ScheduledServices.pp_services_id
  ) 
  LEFT JOIN customer_property CustomerPropertys ON ScheduledServices.id = (
    CustomerPropertys.scheduled_service_id
  ) 
  LEFT JOIN partner_service_scheduling PartnerServiceSchedulings ON ScheduledServices.id = (
    PartnerServiceSchedulings.scheduled_service_id
  ) 
WHERE 
  ScheduledServices.status = 0 AND ScheduledServices.is_done = "In Progress" ')->fetchAll('assoc');

  //debug($compleatedJob);exit;
	$this->set('runningJobs',$compleatedJob);	
			

}

  public function allpartners($id=null)
{
		$serviceID = $id;
		$this->loadModel('Users');
		$serviceTable = TableRegistry::get('PartnerProvidedServicePartners');
		$allData = $serviceTable->find()->where(['pp_service_id'=>$serviceID])->all();
			$new = array();
			foreach($allData as $val) {
				$p_id = $val->partner_id; 
				array_push($new,$p_id);
			}
			$final =  implode(", ",$new);
			$connection = ConnectionManager::get('default');	
			$compleatedJob = $connection->execute('SELECT  
			Partners.id AS `partner__id`, 
			Partners.user_id AS `partner__user_id`, 
			Partners.company_name AS `partner__company_name`, 
			Partners.type_of_phone AS `partner__type_of_phone`, 
			Partners.is_18_years_old AS `partner__is_18_years_old`, 
			Users.id AS `user__id`, 
			Users.first_name AS `user__first_name`, 
			Users.last_name AS `user__last_name`, 
			Users.last_name AS `user__last_name`
			FROM 
			partners  Partners
			LEFT JOIN users Users ON Users.id = (
				Partners.user_id
				) 
			WHERE 
			Partners.id in ('.$final.')  ')->fetchAll('assoc');	
			
		$this->set('allPartner',$compleatedJob);
		$this->set('serviceID',$serviceID);
}
 

public function getdate()
{
		if(!empty($this->request->data['date'])) 
		{
			$result = array();
			$scheduledServiceTable = TableRegistry::get('ScheduledServices');
			$date = trim($this->request->data['date']);
			$result = $scheduledServiceTable->find()->where(['DATE(created_at)'=>$date, 'status'=>1])->first();
			if(isset($result['id'])){
				echo true;
			}
			else{
				echo false;
			}
		}

	exit;
} 

public function assignJob()
{
		$serviceTable = TableRegistry::get('PartnerProvidedServices');
		$partnerTable = TableRegistry::get('Partners');
		if($this->request->is(['post','put'])) 
		{
			$srvice_id = $this->request->data['service_id'];
			$getServiceName = $serviceTable->find()->where(['id'=>$srvice_id])->first();
			$serviceName = $getServiceName->service;
			$partner_id =  $this->request->data['partner'];
			foreach($partner_id as $val) 
			{
				$data = $partnerTable->get($val,['contain'=>['Users']]);
				$prtnrEmail = trim($data->user->email);
				$email = new Email('default');
				$email->from(['teraapp@gmail.com' => 'My Site'])
										->to($prtnrEmail)
										->subject('New Job Offer')
										->send('Hey..! There is new "'.$serviceName.'" job for you. To apply this job please login your account and apply this job');
				
			}	
			if($email) {
					$this->Flash->success(__('You have successfully send mail to partner'));
					return $this->redirect(['action' => 'openJob']);	
			} else {
				$this->Flash->success(__('Mail not sent.! Please try again'));
					return $this->redirect(['action' => 'openJob']);	
			}	
		

		}
		
$this->autoRender = false;		

}

public function percentage()
{
	$percentageTable = TableRegistry::get('AdminPercentages');
	$data = $percentageTable->get((int)1);
			if($this->request->is(['post','put'])) 
			{
				if(!empty($this->request->data['percentage'])) {
				$percentage = $this->request->data['percentage'];
				} else {
					$percentage = $data->percentage;
				}
					$data->percentage = $percentage;
					$data->created = date('Y-m-d,H:i:s');
					$percentageTable->save($data); 
					$this->Flash->success(__('You have successfully add your percentage'));
					return $this->redirect(['action' => 'percentage']);	
			}	
	$this->set('data',$data);
			
}

public function add_extra() {
	$percentageTable = TableRegistry::get('PartnerProvidedServices');
	$extraServiceTable = TableRegistry::get('ExtraProvidedServices');
	$geAllService = $percentageTable->find('all');
	if($this->request->is(['post','put'])) 
	{
		$serviceName = $this->request->data['service_name'];
		$count = count($serviceName); 
		$serviceAmount = $this->request->data['service_amount'];
		for($i=0; $i<$count; $i++) {
			$check = $extraServiceTable->find()->where(['extra_service_name'=>$serviceName[$i]])->first();
			if(empty($check)) {
						$newRow = $extraServiceTable->newEntity();
						$newRow->pp_service_id = $this->request->data['service_id'];
						$newRow->extra_service_name = $serviceName[$i];
						$newRow->service_money_value =  $serviceAmount[$i];
						$extraServiceTable->save($newRow); 		
			} else {
				$this->Flash->success(__( $serviceName[$i] .  ' service already exists'));
				return $this->redirect(['action' => 'add_extra']);
			}			
		}
		$this->Flash->success(__('You have successfully add extra services'));
		return $this->redirect(['action' => 'add_extra']);		
	}	
	$this->set('services',$geAllService);
}

public function extra_list($id=null) {
		$extraServiceTable = TableRegistry::get('ExtraProvidedServices');
		if($id) {
			$allExtra = $extraServiceTable->find()->where(['pp_service_id'=>$id])->all();
			$this->set('list',$allExtra);
		}
}

public function delete_extra($id=null)  {
	$serviceID = $id;
	$extrServiceTable = TableRegistry::get('ExtraProvidedServices');
	$entity = $extrServiceTable->get($serviceID);
	if($entity) {
		$extrServiceTable->delete($entity); 
		$this->Flash->success(__('You have successfully deleted this service'));
		return $this->redirect(['action' => 'index']);
	} else {
		$this->Flash->success(__('Please try again'));
		return $this->redirect(['action' => 'index']);
	} 
}

 /* public function test() { 
		$id = 3;
		$partnerTable = TableRegistry::get('Partners');
		$data = $partnerTable->get($id,['contain'=>['Users']]);
		debug($data->toArray());
		exit;
		
	}  */
 
/* public function search() {
 	$loguser = $this->request->session()->read('Auth.User');
	$id = $loguser['id'];  
	 $PartnersInfo = TableRegistry::get('Partners');
	$query = $PartnersInfo->find()->where(['user_id' => $id])->first();
	$p_id = $query['id'];
//	$allJob = TableRegistry::get('PartnerProvidedServices');
	//$findAllJobs = $allJob->find('all' ,['contain'=>['PartnerProvidedServicePartners']]);
	$allJob = TableRegistry::get('PartnerProvidedServicePartners');	 
	 $findAllJobs = $allJob->find('all', [
    'conditions' => ['partner_id' => $p_id],
    'contain' => ['PartnerProvidedServices']
	]);  
	$this->set('jobs',$findAllJobs);
	//$this->set('p_id',$p_id);
/* 	$test = json_encode($findAllJobs);
	debug(json_decode($test));exit;  */

}