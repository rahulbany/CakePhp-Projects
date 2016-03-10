<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\Rule\IsUnique;
use Cake\ORM\RulesChecker;

class UsersTable extends Table
{

	public function initialize(array $config)
		{
			$this->primaryKey('id');
			$this->table('users');
			
			$this->hasOne('Customers', [
             'foreignKey' => 'user_id'
        ]);
		
		 $this->hasMany('Addresses', [
            'foreignKey' => 'user_id'
        ]);
		
		/* $this->hasOne('Partners', [
             'foreignKey' => 'user_id'
        ]); */
		
		 	
			/* $this->hasOne('Customers', [
				'foreignKey' => 'user_id',
				'dependent' => true
			]);
			
			$this->hasOne('Addresses', [
				'className' => 'Addresses',
				'dependent' => true
			]); */
		  

	} 

	public function validationDefault(Validator $validator)
    {
        return $validator
            ->notEmpty('login_name', 'A username is required')
            ->notEmpty('password', 'A password is required')
            ->notEmpty('role', 'A role is required')
            ->add('role', 'inList', [
                'rule' => ['inList', ['admin', 'author']],
                'message' => 'Please enter a valid role'
            ]);
    }
}
