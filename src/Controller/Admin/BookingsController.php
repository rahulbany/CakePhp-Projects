<?php
namespace App\Controller\Admin;
use App\Controller\AppController;
use Cake\Core\Configure;
use Cake\Network\Exception\NotFoundException;
use Cake\View\Exception\MissingTemplateException;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use Cake\Datasource\ConnectionManager;
use Cake\Utility\Xml;
use Cake\View\Form\EntityContext;
use Cake\Network\Http\Client;
//use Cake\Database\Connection;

class BookingsController extends AppController
{
	public function beforeFilter(Event $event)
    {
		$this->Auth->allow(['checkuseralreadyexist','checkemailalreadyexist']);
        parent::beforeFilter($event);
    }
	
//dev414.trigma.us/traapp_ios/Webs/yards?address=415 Brookvalley Cir&zip=75232
 public function yards() {
		$getAddress = $this->request->data['address'];
		$getZip = $this->request->data['zip'];
			define('ZWSID', 'X1-ZWz1f5so68os97_2ca3z'); // Zillow API Identifier
			// display all errors
			error_reporting(-1);
			ini_set('display_errors', 1);
			//$getAddress = isset($address) ? trim($address) : '';
			$getAddress = $getAddress;
			//$getZip     = isset(zip) ? trim($zip)     : '';
			$getZip     = $getZip;
			if (!$getAddress or !$getZip) {
				$this->error('You should post "address" and "zip" parameters');
			}
			$params = array(
				'zws-id' => ZWSID,
				'address' => $getAddress,
				'citystatezip' => $getZip
			);
			$url = 'http://www.zillow.com/webservice/GetDeepSearchResults.htm?' . http_build_query($params);
			//$result = new SimpleXMLElement($url, 0, true);	
			$http = new Client();
			$response = $http->get($url);
			$result = Xml::build($response->body());
		/* 	echo "<pre>";
			echo print_r($xml);exit; */
			
			//$result = new SimpleXMLElement($url, 0, true);		
			if (!$result) {
				$this->error('Error while getting API data');
			}
			$code = (string)$result->message->code;
			if ($code !== '0') {
				if ($code === '3' or $code === '4') {
					$this->error('The Zillow Web Service is currently not available. Please come back later and try again.');
				}
				if ($code === '502') {
					$this->error('Sorry, the address you provided is not found in the Zillow property database.');
				}
				if ($code === '503') {
					$this->error('Failed to resolve city, state or ZIP code');
				}
				$this->error('Error code does not equal zero (' . $code . ')');
			}
			$limitWarning = 'limit-warning';
			if ($result->message->$limitWarning &&
				$result->message->$limitWarning === 'true'
				) {
				$this->error('You are approaching your API call limit');
			}
			$msg = '';
			if ($result->response and $result->response->results and
				$result->response->results->result and
				$result->response->results->result->lotSizeSqFt) {
				$square = (int)$result->response->results->result->lotSizeSqFt;
				if ($square >= 99 and $square < 8999) {
					$msg = array('massage'=>'You have [S]mall yard size based on our calculation.','size'=>'S','code'=>'1');
				} elseif ($square >= 9000 and $square < 17999) {
					$msg = array('massage'=>'You have [M]edium yard size based on our calculation.','size'=>'M','code'=>'2');
				} elseif ($square >= 18000 and $square < 24999) {
					$msg = array('massage'=>'You have [L]arge yard size based on our calculation.','size'=>'L','code'=>'3');
				} elseif ($square >= 25000 and $square < 133904) {
					$msg = array('massage'=>'You have e[X]tra [L]arge yard size based on our calculation.','size'=>'XL','code'=>'4');
				} else {
					$msg = array('massage'=>'Your yard square is ' . $square . 'sq/ft','size'=>'XXL','code'=>'5');
				}
			} else {
				$this->error('Cannot find square field in API request');
			}
			//header('Content-Type: application/json');
			//print_r($msg);exit;
			 echo json_encode(array(
				'data' => $msg
			)); 
			exit;
} 

	 public function error($request)
	 {
		 $response = array('code'=>'0','massage'=>$request);
				echo json_encode(array('data'=>$response));exit;
	 }

public function index() 
{ 
	//use Cake\Datasource\ConnectionManager;
		$userTable = TableRegistry::get('Users');
		$yardsTable = TableRegistry::get('Yards');
		$getyards =    $yardsTable->find('all');
		$partnerTable = TableRegistry::get('Partners');
		$customerTable = TableRegistry::get('Customers');
		$scheduleServiceTable = TableRegistry::get('ScheduledServices');
		$creditCardTable = TableRegistry::get('CreditCards');
		$mobileNoCardTable = TableRegistry::get('MobileNos');
		$frequencyTables = TableRegistry::get('RequestFrequencys');
		$allFrqncyList = $frequencyTables->find('all');
		$serviceTables = TableRegistry::get('PartnerProvidedServices');
		$allService = $serviceTables->find('all');
		$stateListTable = TableRegistry::get('StateLists');
		$stateList = $stateListTable->find('all');
		if ($this->request->is('post')) 
		{
			//debug($this->request->data());exit;
			if($this->request->data['customer_type'] == 'new_customer') 
			{
				//debug($this->request->data());exit;
				/* $checkEmail = $userTable->find()->where(['email'=>$this->request->data['email']])->first();
				if(!empty($checkEmail)) {
					
				}  */
					//debug($this->request->data);exit;
					$getMail = $userTable->find()->where(['email'=>$this->request->data['email']])->first();
					if(!empty($getMail)) {
						echo "false"; die;
					} else {
					$total_amount =  ltrim($this->request->data['payable_money'],'$');
					$newRow = $userTable->newEntity();
					$newRow->first_name = $this->request->data['first_name'];
					$newRow->last_name = $this->request->data['last_name'];
					
					$newRow->email = $this->request->data['email'];
					$newRow->login_name = $this->request->data['first_name'];
					$newRow->user_type = 'customer';
					$newRow->mobile_no = $this->request->data['mobile_no'];
					$newRow->password = rand(5, 15);
					$newRow->referal_code = time();
					if ($userTable->save($newRow)) 
					{
						$lastInsertID = $newRow->id;
						$newCustomer = $customerTable->newEntity();
						$newCustomer->user_id = $lastInsertID;
						$newCustomer->email = $this->request->data['email'];
						$newCustomer->stripe_id = time();
						if($customerTable->save($newCustomer))
						{
							$newCustomerID = $newCustomer->id;
							$newServiceRow = $scheduleServiceTable->newEntity();
							$newServiceRow->customer_id = $newCustomerID;
							$newServiceRow->pp_services_id = $this->request->data['pp_services_id'];
							if(!empty($this->request->data['discount_code'])) {
							$newServiceRow->discount_code = $this->request->data['discount_code'];	
							} else {
								$newServiceRow->discount_code = '0';
							}
							if(!empty($this->request->data['tip_value'])) {
									$newServiceRow->tip = $this->request->data['tip_value'];
							} else {
								$newServiceRow->tip = '0.0';
							} 
							$newServiceRow->payable_money = $total_amount;
							$newServiceRow->comment = $this->request->data['customer_comment'];
							$newServiceRow->created_at = date('Y-m-d H:i', strtotime($this->request->data['created_at']));
							if($scheduleServiceTable->save($newServiceRow)) 
							{
											$scheduleServiceID = $newServiceRow->id;
											if(!empty($this->request->data['extra_service_list'])) {
													$extra_service_list = explode(',' , $this->request->data['extra_service_list']);
													foreach($extra_service_list as $key=>$new_extra) {
															$extraServiceTable = TableRegistry::get('CustomerExtraServices');
															$newExtraRow = $extraServiceTable->newEntity();
															$newExtraRow->scheduled_service_id = $scheduleServiceID;
															$newExtraRow->customer_id = $newCustomerID;
															$newExtraRow->extra_service_id = $new_extra;
															$extraServiceTable->save($newExtraRow);
													}
											}			
											$connection = ConnectionManager::get('default');
										 	$connection->insert('customer_property', [
												'customer_id' => $newCustomerID,
												'scheduled_service_id' => $scheduleServiceID,
												'`street-address`' => $this->request->data['street_address'],
												'zip' => $this->request->data['zip_code'],
												'state_id' => $this->request->data['state_id'],
												'city' => $this->request->data['city'],
												'created_at' => date('Y-m-d H:i', strtotime($this->request->data['created_at']))
											]); 
								if($connection) 
								{
										$paymentInfo = $creditCardTable->newEntity();
										$paymentInfo->user_id = $lastInsertID;
										$paymentInfo->credit_card_no = $this->request->data['credit_card_no'];
										$paymentInfo->cvv = $this->request->data['cvc'];
										$paymentInfo->neme_of_the_card = $this->request->data['card_name'];
										$paymentInfo->expire_month_id = $this->request->data['expire_month_id'];
										$paymentInfo->expire_year = $this->request->data['expire_year'];
										$paymentInfo->created_at = date('Y-m-d H:i', strtotime($this->request->data['created_at']));
										if($creditCardTable->save($paymentInfo)) 
										{	
											$paid_card_id = $paymentInfo->id;
											$newUpdate = $scheduleServiceTable->get($scheduleServiceID); // Return article with id 12
											$newUpdate->paid_card_id = $paid_card_id;
											$scheduleServiceTable->save($newUpdate);
											$connection = ConnectionManager::get('default');
										 	$connection->insert('`frequency-customer`', [
												'customer_id' => $newCustomerID,
												'frequency_id ' => $this->request->data['frequency_id'],
												'created_at' => date('Y-m-d H:i')
											]);
												$connection = ConnectionManager::get('default');
												$results = $connection
															->newQuery()
															->select('*')
															->from('`frequency-customer`')
															->where(['customer_id ' =>$newCustomerID])
															->execute()
															->fetchAll('assoc');	
											$frqncy_id = $results[0]['id'];	
											$update_freqncy = $scheduleServiceTable->get($scheduleServiceID); 
											$update_freqncy->frequency_customer_id = $frqncy_id;
											$scheduleServiceTable->save($update_freqncy);	
											echo "true";exit;
											 /* $this->Flash->success(__('Your Booking has been successfully sumitted'));
											return $this->redirect(['action' => 'index']); */
											//echo "one"; exit;
										}
								}					
							}
						}								
					}						
				}				
			} else if(($this->request->data['customer_type'] == 'existing_customer')) {
					$total_amount =  ltrim($this->request->data['payable_money'],'$');
					$login_name = $this->request->data['search_customer'];
					$getUser = $userTable->find()->where(['login_name'=>$login_name])->first();
					$user_id = $getUser->id;
					$getCustomer = $customerTable->find()->where(['user_id'=>$user_id])->first(); 
					$customerID = $getCustomer->id; 
					$newServiceRow = $scheduleServiceTable->newEntity();
							$newServiceRow->customer_id = $customerID;
							$newServiceRow->pp_services_id = $this->request->data['pp_services_id'];
							$newServiceRow->discount_code = $this->request->data['discount_code'];
							//$newServiceRow->tip = $this->request->data['tip_value'];
							/* if(!empty($this->request->data['discount_code'])) {
							$newServiceRow->discount_code = $this->request->data['discount_code'];	
							} else {
								$newServiceRow->discount_code = time();
							}*/
							if(!empty($this->request->data['tip_value'])) {
									$newServiceRow->tip = $this->request->data['tip_value'];
							} else {
								$newServiceRow->tip = '0.0';
							}  
							$newServiceRow->payable_money = $total_amount;
							$newServiceRow->created_at = date('Y-m-d H:i', strtotime($this->request->data['created_at']));
							//$newServiceRow->created_at =  str_replace("/","-",$this->request->data['created_at']);
							$newServiceRow->status = 0;
							if($scheduleServiceTable->save($newServiceRow)) 
							{
									$scheduleServiceID = $newServiceRow->id;
										if(!empty($this->request->data['extra_service_list'])) {
													$extra_service_list = explode(',' , $this->request->data['extra_service_list']);
													foreach($extra_service_list as $key=>$new_extra) {
															$extraServiceTable = TableRegistry::get('CustomerExtraServices');
															$newExtraRow = $extraServiceTable->newEntity();
															$newExtraRow->scheduled_service_id = $scheduleServiceID;
															$newExtraRow->customer_id = $newCustomerID;
															$newExtraRow->extra_service_id = $new_extra;
															$extraServiceTable->save($newExtraRow);
													}
											}
											$connection = ConnectionManager::get('default');
											$connection->insert('customer_property', [
												'customer_id' => $customerID,
												'scheduled_service_id' => $scheduleServiceID,
												'`street-address`' => $this->request->data['street_address'],
												'zip' => $this->request->data['zip_code'],
												'state_id' => $this->request->data['state_id'],
												'city' => $this->request->data['city'],
												'created_at' => date('Y-m-d H:s:i')
											]);
								if($connection) 
								{
											$creditCard = $creditCardTable->find()->where(['user_id'=>$user_id])->first();
											$getPaymentID = $creditCard->id;
											$newUpdate = $scheduleServiceTable->get($scheduleServiceID); // Return article with id 12
											$newUpdate->paid_card_id = $getPaymentID;
											$scheduleServiceTable->save($newUpdate);
											$connection = ConnectionManager::get('default');
										 	$connection->insert('`frequency-customer`', [
												'customer_id' => $customerID,
												'frequency_id ' => $this->request->data['frequency_id'],
												'created_at' => date('Y-m-d H:i')
											]);
											$connection = ConnectionManager::get('default');
											$results = $connection
															->newQuery()
															->select('*')
															->from('`frequency-customer`')
															->where(['customer_id ' =>$customerID])
															->execute()
															->fetchAll('assoc');
											$frqncy_id = $results[0]['id'];	
											$update_freqncy = $scheduleServiceTable->get($scheduleServiceID); 
											$update_freqncy->frequency_customer_id = $frqncy_id;
											$scheduleServiceTable->save($update_freqncy);	 
											/* $this->Flash->success(__('Your Booking has been successfully sumitted'));
											return $this->redirect(['action' => 'index']); */
											echo "true"; exit;
										
								}					
							}
			} 
				
		}
			$this->set('frequencyList',$allFrqncyList);	
			$this->set('serviceList',$allService);	
			$this->set('stateList',$stateList);	
			$this->set('getyards',$getyards);	
}

public function getAmount()
{
	$id = $this->request->data['serID'];
	if(!empty($id)) 
	{
		$serviceTables = TableRegistry::get('PartnerProvidedServices');
		$getService = $serviceTables->get($id);
		echo $ammount = $getService->amount;	exit;	
	} /* else { 
		echo "error";exit;
	}	 */
}

public function getDiscount()
{
	$discountCoupon = $this->request->data['discount_coupon'];
	$amount = $this->request->data['amount'];
	if(!empty($discountCoupon)) {	
		$discountTable = TableRegistry::get('Discounts');
		$getDiscount = $discountTable->find()->where(['discount_code'=>$discountCoupon])->first();
		if(!empty($getDiscount)) {
					$todayDate = date('m-d-Y');
					$couponExpDate = $getDiscount->ending_time;
					if($couponExpDate >= $todayDate) {
							$discount_type = 	$getDiscount->discount_type;
							$getAmount = 	$getDiscount->discount_money_value;
							if($discount_type=='amount') {
								$getFinalAmount = $amount-$getAmount;
								echo $getFinalAmount;exit;
							} else if($discount_type=='In %') {
								$getFinalAmount = $amount-($getAmount/100*$amount);
								echo $getFinalAmount;exit;
							}
					} else {
						echo "Discount coupon has expire";exit;
					}
					
		} else {
			echo "Invalid discount coupon"; exit;
		}		

}


}


public function search() 
{
$UsersInfo = TableRegistry::get('Users');
		if(!empty($_REQUEST)){
			$query = array();
			
			if( isset($_REQUEST['term']) && ($_REQUEST['term']!='') ){
				$query = array();
				//$query = $UsersInfo->find()->where(['login_name LIKE'=>'%'.$_REQUEST['term'].'%', 'user_type' => 'customer'])->all();	
				$query = $UsersInfo->find()->where(['login_name LIKE'=>'%'.$_REQUEST['term'].'%', 'user_type' => 'customer'])->all();	
				$countRows = $query->count();
				if($countRows>0){
					foreach($query as $value){
						$data[]  = $value['login_name'];
					}
					echo json_encode($data);
				}
			}
			
			else if( isset($_REQUEST['first_name'])  && ($_REQUEST['first_name']!='') ) {
				$query = $UsersInfo->find('all')->where(['login_name'=>$_REQUEST['first_name']])->contain(['Addresses']);
			//debug($query->toArray());
				$countRows = $query->count();
				if($countRows>0){
					foreach($query as $value){
							$data = array(
								'first_name'=> $value['first_name'],
								'last_name'=> $value['last_name'], 
								'email'=> $value['email'], 
								'mobile_no'=> $value['mobile_no'], 
								'street_address'=>$value['address']['street_address'],
								'city'=>$value['address']['city'],
								'state'=>$value['address']['state_id'],
								'zip'=>$value['address']['zip_code'],
							);
						echo json_encode($data);
					}
				}
			} 
		}
		exit;

		
}
function searchExtraService($id = null){
		if(!empty($this->request)) {
			$yard_id =  $this->request->data['yard_id'];  // yards_id
			$getId =  $this->request->data['id'];  //  service_id
			
			//$serviceTables = TableRegistry::get('PartnerProvidedServices');
			$serviceTables = TableRegistry::get('ServiceYards');
			$queryService = $serviceTables->find()->where(['pp_service_id'=>$getId,'yard_id'=>$yard_id])->first();
			if(!empty($queryService)) {
					$serviceExtraTables = TableRegistry::get('ExtraProvidedServices');
					//$query = $serviceExtraTables->find('all')->where(['pp_service_id'=>$getId]);
					$query = $serviceExtraTables->find('all')->where(['pp_service_id'=>$getId]);
					$returnArr = array();
					foreach($query as $findJq) {
						$returnArr[] = array('service_amount'=>$queryService['amount'], 'extra_id'=>$findJq['id'], 'name'=>$findJq['extra_service_name'], 'service_money_value'=>$findJq['service_money_value']);
					}
					echo json_encode($returnArr);exit;
			} else {
				echo "error";exit;
			}
		}
		exit;
	}
	
	function updateCharge($id = null){
		if(!empty($this->request)) {
			//$extraSevie_Id = $this->request->data['extraServiceId'];
			//debug($extraSevie_Id);exit;
			//$this->Session->write('extras.serviceId', $extraSevie_Id);
			$tip_value =  $this->request->data['tip_value'];
			$service_charge =  $this->request->data['service_charge'];
			$updatedServiceCharge = substr($service_charge, 1);
			$extra_service_charge =  $this->request->data['extra_service_charge'];
			$serviceChargeArr = explode(',',$extra_service_charge); 
			$extra_charge = '';
			foreach($serviceChargeArr as $chargeArr){
					$extra_charge += 	$chargeArr;
			}
			$total = $updatedServiceCharge + $extra_charge + $tip_value;
			$returnArr = array('extra_charge'=>$extra_charge, 'total_charge'=>$total, 'response'=>'success');
			echo json_encode($returnArr);
		}
		exit;
	}
	
	function tip($id = null){
		if(!empty($this->request)) {
			 $tip_value = trim($this->request->data['tip_value']);
			 $service_charge = substr($this->request->data['service_charge'], 1);			
			 $extra_fee = ltrim($this->request->data['extra_fee'] , '$');
			 $discount_val = ltrim($this->request->data['discount'] , '$');
			 $afterDiscountAmount =  ($service_charge + $extra_fee) - $discount_val;
			 $totalAmt = $tip_value + $afterDiscountAmount;
			 $total = trim($totalAmt);
			 $returnArr = array('tip_value'=>$tip_value, 'total_amount'=>$total, 'response'=>'success');
			 echo json_encode($returnArr);
		}
		exit;
	}
	
	public function discount() {
		if(!empty($this->request)) {
			$discountTable = TableRegistry::get('Discounts');
			$dis_val = 	$this->request->data['discount_value'];
			$tip_value = ltrim($this->request->data['tip_value'], '$');	
			$service_charge = 	ltrim($this->request->data['service_charge'],'$');
			$extra_fee = 	ltrim($this->request->data['extra_fee'],'$');
			$discountOnAmount = $service_charge +  $extra_fee;
			//$total = $tip_value + $service_charge + $extra_fee;
			$getDiscount = $discountTable->find()->where(['discount_code'=>$dis_val])->first();
			if(!empty($getDiscount)) {
					$todayDate = date('m-d-Y');
					$couponExpDate = $getDiscount->ending_time;
					if($couponExpDate >= $todayDate) {
							$discount_type = 	$getDiscount->discount_type;
							$getAmount = 	$getDiscount->discount_money_value;
							if($discount_type=='amount') {
								  $getFinalAmount = trim($discountOnAmount) - trim($getAmount);
							      $finaldiscount  =  "$".$getAmount;
								  $total = $getFinalAmount + $tip_value;
							} else if($discount_type=='In %') {
								$getPercnt = $getAmount;
								$getFinalAmount = $discountOnAmount-($getAmount/100 * $discountOnAmount);
								$finaldiscount = "$".($getAmount/100) * $discountOnAmount;
								$total = $getFinalAmount + $tip_value;
							}
							$returnArr = array('diccount_value'=>$finaldiscount, 'total_charge'=>$getFinalAmount, 'response'=>'success');
							echo json_encode($returnArr); 
					} else {
						$total = $tip_value + $service_charge + $extra_fee;
							$returnArr = array('diccount_value'=> '0', 'total_charge'=>$total, 'response'=>'Discount coupon has expire');
							echo json_encode($returnArr); exit;	
					}	
			} else {
					$total = $tip_value + $dis_val + $service_charge + $extra_fee;
					$returnArr = array('diccount_value'=> '0', 'total_charge'=>$total,'response'=>'Invalid discount coupon');
					echo json_encode($returnArr);exit;
				}
		}
		exit;
	}
	
	public function checkemailalreadyexist() {
		$userTable = TableRegistry::get('Users');
		$findEmail =  $_REQUEST['email'];
		 $getUse =  $userTable->find()->where(['email'=>$findEmail])->first();
	  if(count($getUse) > 0){
			echo 'false';
		}
		else{
			echo 'true';
		}   
		$this->autoRender = false; 
	}
	
	public function booking() {
		
				/*******************************************************/
			 /* $scheduledServiceTable = TableRegistry::get('ScheduledServices');
			 $dat = '2016-02-25 03:11:00';
			 $newDate =  date('Y-m-d' , strtotime($dat));
			$result = $scheduledServiceTable->find('all', [
					'conditions' => ['DATE(ScheduledServices.created_at)' => $newDate],
					'contain' => ['PartnerServiceSchedulings'=>['Partners'=>['Users']],'CustomerPropertys'=>['Customers'=>['Users']]]
					//'limit' => 3
			]);
			//debug($result->toArray());
			$this->set('data',$result);  */
		 if($_POST) {
		  	$currentDate = trim($this->request->data['data']);
			$newDate =  date('Y-m-d' , strtotime($currentDate));
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
			  Customers.id AS `Customers__id`, 
			  Customers.user_id AS `Customers__user_id`, 
			  Customers.neighbourhood AS `Customers__neighbourhood`, 
			  Customers.email AS `Customers__email`, 
			  Customers.is_email_verified AS `Customers__is_email_verified`, 
			  Customers.stripe_id AS `Customers__stripe_id`, 
			  Customers.profile_image AS `Customers__profile_image`, 
			  Customers.selected_credit_card_id AS `Customers__selected_credit_card_id`, 
			  Users.id AS `Users__id`, 
			  Users.first_name AS `Users__first_name`, 
			  Users.last_name AS `Users__last_name`, 
			  Users.login_name AS `Users__login_name`, 
			  Users.email AS `Users__email`, 
			  Users.password AS `Users__password`, 
			  Users.user_type AS `Users__user_type`, 
			  Users.referal_code AS `Users__referal_code`, 
			  Users.profile_image AS `Users__profile_image`, 
			  Users.mobile_no AS `Users__mobile_no`, 
			  Users.remember_token AS `Users__remember_token`, 
			  Users.created_at AS `Users__created_at`, 
			  Users.updated_at AS `Users__updated_at`, 
			  Users.token AS `Users__token` 
			FROM 
			  scheduled_service ScheduledServices 
			  LEFT JOIN customer_property CustomerPropertys ON ScheduledServices.id = (
				CustomerPropertys.scheduled_service_id
			  ) 
			  LEFT JOIN customers Customers ON Customers.id = (CustomerPropertys.customer_id) 
			  LEFT JOIN users Users ON Users.id = (Customers.user_id) 
			WHERE 
			  DATE(ScheduledServices.created_at) = " '.$newDate.' "
			LIMIT 
			  3')->fetchAll('assoc'); 
			  if(!empty($results)) {
				echo json_encode($results);
				 exit;
			  } else {
				echo json_encode(array('response'=>'false')); exit;
				//echo "false"; exit;
			  }
			exit;
		}
	}
}