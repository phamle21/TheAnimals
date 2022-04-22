<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use \Staudenmeir\EloquentHasManyDeep\HasRelationships;

class Lop extends Model
{
    use HasFactory;

    protected $table = 'lop';
    
    protected $fillable = [
        'ten_lop',
        'nganh_id'
    ];

    public function bo()
    {
        return $this->hasMany(Bo::class, 'lop_id', 'id');
    }

    public function nganh()
    {
        return $this->belongsTo(Nganh::class, 'nganh_id');
    }

    public function ho()
    {
        return $this->hasManyThrough(Ho::class, Bo::class, 'lop_id', 'bo_id', 'id');
    }

    
}
