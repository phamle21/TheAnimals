<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BaoTon extends Model
{
    use HasFactory;

    protected $table = 'bao_ton';

    protected $fillable = [
        'loai_tt',
        'tinh_trang',
        'sinhvat_id',
    ];

    public function sinhVat(){
        return $this->belongsTo(SinhVat::class, 'sinhvat_id');
    }
}
