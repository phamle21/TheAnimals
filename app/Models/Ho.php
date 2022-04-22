<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ho extends Model
{
    use HasFactory;

    protected $table = 'ho';
    
    protected $fillable = [
        'ten_ho',
        'bo_id'
    ];

    public function sinhVat(){
        return $this->hasMany(SinhVat::class, 'ho_id', 'id');
    }

    public function bo(){
        return $this->belongsTo(Bo::class, 'bo_id');
    }

}
