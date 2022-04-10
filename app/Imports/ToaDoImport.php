<?php

namespace App\Imports;

use App\Models\ToaDo;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class ToaDoImport implements ToModel, WithStartRow
{
    public function startRow(): int
    {
        return 2;
    }

    public function model(array $row)
    {
        return new ToaDo([
            'sinhvat_id' => $row[0],
            'loai_toa_do' => $row[1],
            'toa_do' => $row[2]
        ]);
    }
}
