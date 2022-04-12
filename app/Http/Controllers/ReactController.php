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
    public function listAnimals()
    {
        $limit = 12;

        $list = SinhVat::take($limit)->get();

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

    public function loadMoreInfo($limit)
    {
        $limit += 6;

        if ($limit >= count(SinhVat::all())) {
            $list = SinhVat::all();
        } else {
            $list = SinhVat::all()->take($limit);
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

    public function detailAnimals($id)
    {
        $detail = SinhVat::find($id);

        $detail->nganh = SinhVat::find($id)->ho->bo->lop->nganh->ten_nganh;
        $detail->lop = SinhVat::find($id)->ho->bo->lop->ten_lop;
        $detail->bo = SinhVat::find($id)->ho->bo->ten_bo;
        $detail->ho = SinhVat::find($id)->ho->ten_ho;
        $detail->mediaList = SinhVat::find($id)->media;
        $detail->baotonList = SinhVat::find($id)->baoton;
        $detail->toadoList = SinhVat::find($id)->toado;

        return response()->json($detail);
    }

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

    public function listAnimalsMedia($id)
    {
        $list = SinhVat::find($id)->media;

        return response()->json($list);
    }

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
}
