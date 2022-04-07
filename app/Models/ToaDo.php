<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ToaDo extends Model
{
    use HasFactory;

    protected $table = 'toa_do';

    public function sinhVat(){
        return $this->belongsTo(SinhVat::class, 'sinhvat_id');
    }

}
