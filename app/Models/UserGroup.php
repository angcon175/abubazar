<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class UserGroup extends Model
{
    protected $table = 'user_groups';

    public function role() {
        return $this->belongsTo('App\Models\Role', 'role_id', 'id');
    }


    public function getList()
    {
        return DB::table('user_groups')->pluck('group_name', 'id');
    }
    


}
