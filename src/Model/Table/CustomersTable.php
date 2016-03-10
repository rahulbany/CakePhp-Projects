<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;

class CustomersTable extends Table
{
	 
	  public function initialize(array $config)
		{
			//$this->table('partners');
			
			  $this->belongsTo('Users', [
				'foreignKey' => 'user_id',
			]);
		
	} 

}