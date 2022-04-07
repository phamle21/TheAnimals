<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bo extends Model
{
    use HasFactory;

    protected $table = 'bo';

    public function ho(){
        return $this->hasMany(Ho::class, 'bo_id', 'id');
    }

    public function lop(){
        return $this->hasMany(Lop::class, 'lop_id');
    }

}
