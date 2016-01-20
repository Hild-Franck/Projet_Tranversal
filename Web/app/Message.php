<?php

namespace app;

use Illuminate\Database\Eloquent\Model;

Class Message extends Model{
    protected $table = 'Message';
    protected $primaryKey = 'ID_Message';

    public $timestamps = false;
}