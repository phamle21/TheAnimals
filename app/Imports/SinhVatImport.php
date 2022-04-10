<?php

namespace App\Imports;

use App\Models\SinhVat;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class SinhVatImport implements ToModel, WithStartRow
{

    public function startRow(): int
    {
        return 2;
    }

    public function model(array $row)
    {
        return new SinhVat([
            'id' => $row[0],
            'ho_id' => $row[2],
            'ten_khoa_hoc' => $row[3],
            'ten_tieng_viet' => $row[4],
            'ten_dia_phuong' => $row[5],
            'mo_ta_hinh_thai' => $row[6],
            'mo_ta_sinh_thai' => $row[7],
            'gia_tri_su_dung' => $row[8],
            'sinh_canh' => $row[9],
        ]);
    }

}
