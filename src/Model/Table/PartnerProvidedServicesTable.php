<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\Rule\IsUnique;
use Cake\ORM\RulesChecker;

class PartnerProvidedServicesTable extends Table
{  
	 public function initialize(array $config) {
		$this->table('partner_provided_services');
		$this->belongsTo('Yards', [
            'foreignKey' => 'yards_id'
        ]);
		
		 $this->hasMany('ScheduledServicesTable',[
            'foreignKey' => 'pp_service_id'
           // 'dependent' => false,
        ]); 
		
	}
}
