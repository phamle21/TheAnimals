<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BaoTon extends Model
{
    use HasFactory;

    protected $table = 'bao_ton';

    public function sinhVat(){
        return $this->belongsTo(SinhVat::class, 'sinhvat_id');
    }
}
