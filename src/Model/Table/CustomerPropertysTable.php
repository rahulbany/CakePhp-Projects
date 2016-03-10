<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\Rule\IsUnique;
use Cake\ORM\RulesChecker;

class CustomerPropertysTable extends Table
{

	 public function initialize(array $config)
		{
			$this->table('customer_property');
			//$this->primaryKey('id');
			
			$this->belongsTo('Customers', [
		       'foreignKey' => 'customer_id'
			]);
			/* $this->hasMany('ScheduledService', [
            'foreignKey' => 'customer_id',
           // 'dependent' => false,
        ]);	   */
	}
}
