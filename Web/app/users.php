<?php

namespace app;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    protected $table = 'Users';
    protected $primaryKey = 'ID_Users';

    public $timestamps = false;


}