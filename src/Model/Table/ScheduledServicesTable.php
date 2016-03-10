<?php
namespace App\Model\Table;

use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\Rule\IsUnique;
use Cake\ORM\RulesChecker;

class ScheduledServicesTable extends Table
{
	 public function initialize(array $config)
		{
			$this->table('scheduled_service');
			/* $this->hasMany('PartnerServiceScheduling', [
            'foreignKey' => 'partner_id',
           // 'dependent' => false,
        ]); */
	
	/* 	$this->belongsTo('CustomerPropertys',[
            'foreignKey' => 'customer_id',
        //    'joinType' => 'INNER',
        ]); */
		
		$this->belongsTo('PartnerProvidedServices', [
            'foreignKey' => 'pp_services_id'
		]);
		
		$this->hasOne('PartnerServiceSchedulings', [
		       'foreignKey' => 'scheduled_service_id'
        ]); 
		
		$this->hasOne('CustomerPropertys', [
		       'foreignKey' => 'scheduled_service_id'
        ]);
		
		$this->hasOne('PartnerServiceSchedulings', [
            'foreignKey' => 'scheduled_service_id'
		]);
		
		$this->hasOne('CustomerPropertys1', [
		       'foreignKey' => 'scheduled_service_id'
        ]);
		
		/*  $this->belongsTo('Customers', [
            'foreignKey' => 'id'
		]);  */
		
		
		
		
		
	}
}
