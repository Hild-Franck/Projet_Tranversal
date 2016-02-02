<?php
/**
 * Created by PhpStorm.
 * User: Knarfux
 * Date: 02/02/2016
 * Time: 10:57
 */

namespace App;
use Illuminate\Database\Eloquent\Model;


class Autorization extends Model
{
    protected $table = 'autorizations';
    protected $primaryKey = 'id';

    private $conversation;
    private $user;

   function __construct($_conversation, $_user){
       $this->conversation = $_conversation;
       $this->user = $_user;
   }
    function isAuth(){
        return Autorization::where('username', $this->user->username)->where('conversation', $this->conversation->id)->get();
    }

}