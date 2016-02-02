<?php
/**
 * Created by PhpStorm.
 * User: Knaufux
 * Date: 2/1/2016
 * Time: 11:49 PM
 */

namespace App;
use Illuminate\Database\Eloquent\Model;
use App\Message;


class Conversation extends Model{
    protected $table = 'conversations';
    protected $primaryKey = 'id';

    public function changeTitle($newTitle){
        $this->title = $newTitle;
        $this->save();
    }
}