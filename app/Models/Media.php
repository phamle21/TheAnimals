<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Media extends Model
{
    use HasFactory;

    protected $table = 'media';

    protected $fillable = [
        'media_type',
        'ten_media',
        'sinhvat_id',
    ];

    public function sinhVat(){
        return $this->belongsTo(SinhVat::class, 'sinhvat_id');
    }

}
