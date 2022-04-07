<?php

namespace App\Http\Controllers;

use App\Imports\SinhVatImport;
use App\Models\SinhVat;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ReactController extends Controller
{
    public function listAnimals()
    {
        $limit = 12;
        $list = SinhVat::all()->take($limit);

        return response()->json($list);
    }

    public function loadMoreInfo($limit)
    {
        $limit += 6;

        if ($limit >= count(SinhVat::all())) {
            $list = SinhVat::all();
        } else {
            $list = SinhVat::all()->take($limit);
        }

        return response()->json($list);
    }

    public function detailAnimals($id)
    {
        $detail = SinhVat::find($id);
        // echo $detail;
        return response()->json($detail);
    }
}
