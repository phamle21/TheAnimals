<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SinhVat extends Model
{
    use HasFactory;

    protected $table = 'sinh_vat';

    protected $fillable = [
        'ho_id',
        'ten_khoa_hoc',
        'ten_tieng_viet',
        'ten_dia_phuong',
        'mo_ta_hinh_thai',
        'mo_ta_sinh_thai',
        'gia_tri_su_dung',
        'sinh_canh'
    ];

    public function ho()
    {
        return $this->belongsTo(Ho::class, 'ho_id');
    }

    public function media()
    {
        return $this->hasMany(Media::class, 'sinhvat_id', 'id');
    }

    public function toaDo()
    {
        return $this->hasMany(ToaDo::class, 'sinhvat_id', 'id');
    }

    public function baoTon()
    {
        return $this->hasMany(BaoTon::class, 'sinhvat_id', 'id');
    }
}
