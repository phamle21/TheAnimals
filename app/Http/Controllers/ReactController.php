<?php

namespace App\Http\Controllers;

use App\Imports\SinhVatImport;
use App\Models\BaoTon;
use App\Models\Bo;
use App\Models\Ho;
use App\Models\Lop;
use App\Models\Nganh;
use App\Models\SinhVat;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ReactController extends Controller
{
    //Animal list
    public function listAnimals()
    {
        $list = SinhVat::all();

        foreach ($list as $sv) {
            foreach (SinhVat::find($sv->id)->media as $m) {
                if ($m->media_type == "image") {
                    $sv->image = $m->ten_media;
                    break;
                }
            }
        }

        return response()->json($list);
    }

    //Animal Detail
    public function detailAnimals($id)
    {
        $detail = SinhVat::find($id);

        $detail->nganh = SinhVat::find($id)->ho->bo->lop->nganh->ten_nganh;
        $detail->lop = SinhVat::find($id)->ho->bo->lop->ten_lop;
        $detail->bo = SinhVat::find($id)->ho->bo->ten_bo;
        $detail->ho_id = SinhVat::find($id)->ho->id;
        $detail->ho = SinhVat::find($id)->ho->ten_ho;
        $detail->mediaList = SinhVat::find($id)->media;
        $detail->baotonList = SinhVat::find($id)->baoton;
        $detail->toadoList = SinhVat::find($id)->toado;

        return response()->json($detail);
    }

    //Other Animal
    public function listAnimalsOther($id)
    {
        $sinhvat = SinhVat::find($id);

        $list = SinhVat::where('ho_id', $sinhvat->ho_id)->where('id', '<>', $id)->get();

        foreach ($list as $sv) {
            foreach (SinhVat::find($sv->id)->media as $m) {
                if ($m->media_type == "image") {
                    $sv->image = $m->ten_media;
                    break;
                }
            }
        }
        return response()->json($list);
    }

    //Animal Media
    public function listAnimalsMedia($id)
    {
        $list = SinhVat::find($id)->media;

        return response()->json($list);
    }

    //Search Animal
    public function searchAnimal(Request $request)
    {
        $list = SinhVat::where('ten_tieng_viet', 'like', '%' . $request->value . '%')->get();

        if ($request->value == "") {
            $list = SinhVat::take(0)->get();
        }

        foreach ($list as $sv) {
            foreach (SinhVat::find($sv->id)->media as $m) {
                if ($m->media_type == "image") {
                    $sv->image = $m->ten_media;
                    break;
                }
            }
        }
        return response()->json($list);
    }

    //Animal type list
    public function listAnimalType($type)
    {
        $list = null;

        switch ($type) {
            case 'nganh':
                $list = Nganh::all();
                break;
            case 'lop':
                $list = Lop::all();
                break;
            case 'bo':
                $list = Bo::all();
                break;
            case 'ho':
                $list = Ho::all();
                break;
        }

        return response()->json($list);
    }
}
