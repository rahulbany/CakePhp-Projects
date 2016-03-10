<?php
namespace App\Model\Entity;

use Cake\Auth\DefaultPasswordHasher;
use Cake\ORM\Entity;
use Cake\ORM\TableRegistry;

class User extends Entity
{

    // Make all fields mass assignable except for primary key field "id".
    protected $_accessible = [
        '*' => true,
        'id' => false,
		'password'=> true,
		'confirm'=> true
    ];

    protected function _setPassword($password)
    {
        return (new DefaultPasswordHasher)->hash($password);
    }

	public function generateCode()
    {
        $code = '';
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        for ($i = 0; $i < 15; $i++) {
            $code .= $characters[rand(0, strlen($characters) - 1)];
        }

		$users = TableRegistry::get('Users');
		$user = $users->find('all', ['conditions' => ['referal_code' => $code]]);
		
        if ($user->count() >= 1) {
            $this->generateCode();
        }

        return $code;
    }		
}

?>