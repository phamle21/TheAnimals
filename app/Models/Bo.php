<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bo extends Model
{
    use HasFactory;

    protected $table = 'bo';
    
    protected $fillable = [
        'ten_bo',
        'lop_id'
    ];

    public function ho(){
        return $this->hasMany(Ho::class, 'bo_id', 'id');
    }

    public function lop(){
        return $this->belongsTo(Lop::class, 'lop_id');
    }

    public function sinhVat(){
        return $this->hasManyThrough(SinhVat::class, Ho::class, 'bo_id','ho_id', 'id');
    }
}
