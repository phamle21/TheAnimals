<?php

namespace App\Imports;

use App\Models\Media;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class MediaImport implements ToModel, WithStartRow
{
    public function startRow(): int
    {
        return 2;
    }

    public function model(array $row)
    {
        return new Media([
            'sinhvat_id' => $row[0],
            'media_type' => $row[1],
            'ten_media' => $row[2]
        ]);
    }
}
