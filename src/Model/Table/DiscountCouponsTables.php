<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;

class DiscountCouponsTable extends Table
{
	  public function initialize(array $config)
		{
				 $this->primaryKey('id');
				  //$this->table('discount');
		} 
}