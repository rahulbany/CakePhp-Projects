<?php 
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\Rule\IsUnique;
use Cake\ORM\RulesChecker;
class InvitesTable extends Table {
//public $useTable = false;

   public function validationDefault(Validator $validator)
    {
        return $validator
            ->notEmpty('email', 'Email is required')
    } 
	
/* 	public function buildRules(RulesChecker $rules)
	{
		$rules->add($rules->isUnique(['email']));
		return $rules;
	} */

	
}
