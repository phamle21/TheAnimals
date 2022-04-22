<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nganh extends Model
{
    use HasFactory;

    protected $table = 'nganh';
    
    protected $fillable = [
        'ten_nganh',
    ];

    public function lop()
    {
        return $this->hasMany(Lop::class, 'nganh_id', 'id');
    }

    public function bo()
    {
        return $this->hasManyThrough(Bo::class, Lop::class, 'nganh_id', 'lop_id', 'id');
    }

}
