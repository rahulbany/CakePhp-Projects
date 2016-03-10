<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\ORM\Query;
use Cake\Validation\Validator;
use Cake\ORM\Rule\IsUnique;
use Cake\ORM\RulesChecker;

class PartnerProvidedServicePartnersTable extends Table
{
	 public function initialize(array $config) {
		$this->primaryKey('id');
		$this->table('partner_provided_service_partners');
		 $this->belongsTo('PartnerProvidedServices',[
            'foreignKey' => 'pp_service_id'
           // 'dependent' => false,
        ]); 
	}
}
