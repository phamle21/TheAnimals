<?php

namespace App\Imports;

use App\Models\BaoTon;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class BaoTonImport implements ToModel, WithStartRow
{
    public function startRow(): int
    {
        return 2;
    }

    public function model(array $row)
    {
        return new BaoTon([
            'sinhvat_id' => $row[0],
            'loai_tt' => $row[1],
            'tinh_trang' => $row[2]
        ]);
    }
}
