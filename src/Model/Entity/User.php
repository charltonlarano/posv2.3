<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * User Entity
 *
 * @property int $id
 * @property int $fee_id
 * @property string $First_Name
 * @property string $Middle_Name
 * @property string $Last_Name
 * @property string $username
 * @property string $password
 * @property int $group_id
 * @property string $email
 * @property string $address
 * @property \Cake\I18n\FrozenTime $created
 * @property \Cake\I18n\FrozenTime $modified
 *
 * @property \App\Model\Entity\Fee $fee
 * @property \App\Model\Entity\Group $group
 * @property \App\Model\Entity\Account[] $accounts
 */
class User extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' => true,
        'id' => false
    ];

    /**
     * Fields that are excluded from JSON versions of the entity.
     *
     * @var array
     */
    protected $_hidden = [
        'password'
    ];
    public function parentNode()
    {
        if (!$this->id) {
         return null;
    }
      if (isset($this->group_id)) {
      $groupId = $this->group_id;
    } else {
       $Users = TableRegistry::get('Users');
       $user = $Users->find('all', ['fields' => ['group_id']])->where(['id' => $this->id])->first();
       $groupId = $user->group_id;
    }
        if (!$groupId) {
         return null;
    }
         return ['Groups' => ['id' => $groupId]];
 }
}
