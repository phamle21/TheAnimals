<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lop extends Model
{
    use HasFactory;

    protected $table = 'lop';

    public function bo(){
        return $this->hasMany(Bo::class, 'lop_id', 'id');
    }

    public function nganh(){
        return $this->hasMany(Nganh::class, 'nganh_id');
    }

}
