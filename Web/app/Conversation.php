<?php

namespace app;

use Illuminate\Database\Eloquent\Model;

class Conversation extends Model
{
    protected $table = 'Conversation';
    protected $primaryKey = 'ID_Conversation';

    public $timestamps = false;


}