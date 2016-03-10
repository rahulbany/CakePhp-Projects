<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;

class UserReferalsTable extends Table
{
	  public function initialize(array $config)
		{
				 $this->primaryKey('id');
		} 
}