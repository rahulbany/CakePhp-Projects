<?php 
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\Rule\IsUnique;
use Cake\ORM\RulesChecker;

class AdminPercentagesTable extends Table
{
	 public function initialize(array $config)
		{
			/* $this->primaryKey('id');
			$this->table('partners'); */
			$this->table('admin_percentage');
			
			
		}
}
