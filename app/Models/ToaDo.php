<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ToaDo extends Model
{
    use HasFactory;

    protected $table = 'toa_do';

    protected $fillable = [
        'loai_toa_do',
        'toa_do',
        'sinhvat_id',
    ];

    public function sinhVat()
    {
        return $this->belongsTo(SinhVat::class, 'sinhvat_id');
    }
}
