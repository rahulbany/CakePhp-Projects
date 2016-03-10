<?php 
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\Rule\IsUnique;
use Cake\ORM\RulesChecker;

class PartnersTable extends Table
{
	 public function initialize(array $config)
		{
			/* $this->primaryKey('id');
			$this->table('partners'); */
			
			$this->table('partners');
			
			  $this->belongsTo('Users', [
				'foreignKey' => 'user_id',
			]);
		}
}

