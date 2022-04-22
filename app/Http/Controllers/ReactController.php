<?php

namespace App\Http\Controllers;

use App\Imports\SinhVatImport;
use App\Models\BaoTon;
use App\Models\Bo;
use App\Models\Ho;
use App\Models\Lop;
use App\Models\Media;
use App\Models\Nganh;
use App\Models\SinhVat;
use App\Models\ToaDo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;
use stdClass;

class ReactController extends Controller
{

    public function __construct()
    {
        //Detail obj
        function detailSinhVat($id)
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

            return $detail;
        }
    }

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
        $detail = detailSinhVat($id);


        return response()->json($detail);
    }

    //Edit Animal
    public function editAnimals(Request $request)
    {

        $result = SinhVat::find($request->id)->update($request->all());
        $detail = SinhVat::find($request->id);

        if ($result) {
            $detail = detailSinhVat($request->id);
            $detail->status = "success";
        } else {
            $detail->status = "fail";
        }

        return $detail;
    }

    //Edit Toa do, Bao ton Animal
    public function editOtherAnimals(Request $request)
    {


        foreach ($request->baoton_id as $k => $v) {
            $result = BaoTon::find($v)->update([
                "tinh_trang" => $request->tinh_trang[$k]
            ]);
        }

        foreach ($request->toado_id as $k => $v) {
            $result1 = ToaDo::find($v)->update([
                "toa_do" => $request->toa_do[$k]
            ]);
        }

        $detail = SinhVat::find($request->id);

        if ($result && $result1) {
            $detail = detailSinhVat($request->id);
            $detail->status = "success";
        } else {
            $detail->status = "fail";
        }

        return $detail;
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

    //Add Type Animal
    public function addTypeAnimal(Request $request)
    {
        $list = null;
        $type = $request->type;

        switch ($type) {
            case 'nganh':
                $add = Nganh::insert([
                    "ten_nganh" => $request->ten_nganh
                ]);

                $list = Nganh::all();

                break;
            case 'lop':
                $add = Lop::insert([
                    "ten_lop" => $request->ten_lop,
                    "nganh_id" => $request->nganh_id
                ]);
                $list = Lop::all();
                break;
            case 'bo':
                $add = Bo::insert([
                    "ten_bo" => $request->ten_bo,
                    "lop_id" => $request->lop_id
                ]);
                $list = Bo::all();
                break;
            case 'ho':
                $add = Ho::insert([
                    "ten_ho" => $request->ten_ho,
                    "bo_id" => $request->bo_id
                ]);
                $list = Ho::all();
                break;
        }

        if ($add === TRUE) {
            $list->status = 'success';
        } else {
            $list->status = 'fail';
        }
        return response()->json($list);
    }

    //Edit Type Animal
    public function editTypeAnimal(Request $request)
    {
        $list = null;
        $type = $request->type;

        switch ($type) {
            case 'nganh':
                foreach ($request->id as $k => $v) {
                    $update = Nganh::find($v)->update([
                        "ten_nganh" => $request->ten_nganh[$k]
                    ]);
                }
                $list = Nganh::all();
                break;
            case 'lop':
                foreach ($request->id as $k => $v) {
                    $update = Lop::find($v)->update([
                        "ten_lop" => $request->ten_lop[$k]
                    ]);
                }
                $list = Lop::all();
                break;
            case 'bo':
                foreach ($request->id as $k => $v) {
                    $update = Bo::find($v)->update([
                        "ten_bo" => $request->ten_bo[$k]
                    ]);
                }
                $list = Bo::all();
                break;
            case 'ho':
                foreach ($request->id as $k => $v) {
                    $update = Ho::find($v)->update([
                        "ten_ho" => $request->ten_ho[$k]
                    ]);
                }
                $list = Ho::all();
                break;
        }

        if ($update === TRUE) {
            $list->status = (object)'success';
        } else {
            $list->status = 'fail';
        }
        return response()->json($list);
    }

    //Add Animal
    public function addAnimals(Request $request)
    {
        $action = new stdClass();

        // kiểm tra có files sẽ xử lý
        if ($request->hasFile('files')) {
            $allowedfileExtension = ['jpg', 'png', 'gif', 'png', 'jpeg', 'svg', 'mp4'];
            $files = $request->file('files');
            // flag xem có thực hiện lưu DB không. Mặc định là có
            $exe_flg = true;
            // kiểm tra tất cả các files xem có đuôi mở rộng đúng không
            foreach ($files as $file) {
                $extension = $file->getClientOriginalExtension();
                $check = in_array($extension, $allowedfileExtension);

                if (!$check) {
                    // nếu có file nào không đúng đuôi mở rộng thì đổi flag thành false
                    $exe_flg = false;
                    break;
                }
            }
            // nếu không có file nào vi phạm validate thì tiến hành lưu DB
            if ($exe_flg) {
                $add_sinhvat = SinhVat::create($request->all());
                $sinhvat_id = $add_sinhvat->id;

                $loai_baoton = [
                    'TÌNH TRẠNG BẢO TỒN THEO IUCN',
                    'TÌNH TRẠNG BẢO TỒN THEO SÁCH ĐỎ VIỆT NAM',
                    'TÌNH TRẠNG BẢO TỒN THEO NGHỊ ĐỊNH 32/2006/NĐCP',
                    'TÌNH TRẠNG BẢO TỒN THEO CITES (40/2013/TT-BNNPTNT)'
                ];

                foreach ($request->tinh_trang as $k => $v) {
                    $add_baoton = BaoTon::create([
                        "loai_tt" => $loai_baoton[$k],
                        "tinh_trang" => $v,
                        "sinhvat_id" => $sinhvat_id
                    ]);
                }

                foreach ($request->toa_do as $k => $v) {
                    $add_toado = ToaDo::create([
                        "loai_toa_do" => "Tọa độ " . $k + 1,
                        "toa_do" => $v,
                        "sinhvat_id" => $sinhvat_id
                    ]);
                }
                // duyệt từng ảnh và thực hiện lưu
                foreach ($request->file('files') as $file) {
                    $extension = $file->getClientOriginalExtension();
                    // $filename = $file->store('media');
                    $filename = Storage::disk('public_uploads')->put('',$file);
                    if ($extension == 'mp4') {
                        Media::create([
                            'media_type' => 'video',
                            'ten_media' => $filename,
                            'sinhvat_id' => $sinhvat_id,
                        ]);
                    } else {
                        Media::create([
                            'media_type' => 'image',
                            'ten_media' => $filename,
                            'sinhvat_id' => $sinhvat_id,
                        ]);
                    }
                }

                // echo "Upload successfully";
                $action->animal_id = $sinhvat_id;
                $action->status = "success";
            } else {
                $action->status = 'Lỗi định dạng file tải lên không đúng!';
            }
        }

        return response()->json($action);
    }
}
