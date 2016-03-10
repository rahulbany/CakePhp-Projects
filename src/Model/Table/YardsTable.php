<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\Rule\IsUnique;
use Cake\ORM\RulesChecker;

class YardsTable extends Table
{  
	 public function initialize(array $config) {
		$this->table('yards');
		$this->hasMany('Yards',[
            'foreignKey' => 'yards_id'
        ]);  
	}
}
