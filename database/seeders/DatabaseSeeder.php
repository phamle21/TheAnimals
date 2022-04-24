<?php

namespace Database\Seeders;

use App\Imports\BaoTonImport;
use App\Imports\MediaImport;
use App\Models\Bo;
use App\Models\Ho;
use App\Models\Lop;
use App\Models\Nganh;
use App\Models\SinhVat;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\SinhVatImport;
use App\Imports\ToaDoImport;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        User::create([
            'fullname' => 'NAT',
            'email' => 'admin',
            'phone' => '0941649826',
            'password' => Hash::make('admin'),
            'remember_token' => Str::random(60),
        ]);

        Nganh::insert([
            'ten_nganh' => 'Động vật có dây sống (chordata)'
        ]);

        Lop::insert([
            [
                'ten_lop' => 'AMPHIBIA (Linnaeus, 1758)', //id = 1
                'nganh_id' => 1
            ],
            [
                'ten_lop' => 'REPTILIA LAURENTI, 1768', //id = 2
                'nganh_id' => 1
            ],
        ]);

        Bo::insert([
            [
                'ten_bo' => 'ANURA (Fischer, 1813)', //1
                'lop_id' => 1
            ],
            [
                'ten_bo' => 'GYMNOPHIONA (Muller, 1832)', //2
                'lop_id' => 1
            ],
            [
                'ten_bo' => 'SQUAMATA OPPEL, 18411', //3
                'lop_id' => 2
            ],
        ]);

        Ho::insert([
            [
                'ten_ho' => 'Agamidae Gray, 1827',
                'bo_id' => 3
            ],
            [
                'ten_ho' => 'Bufonidae Gray, 1825',
                'bo_id' => 1
            ],
            [
                'ten_ho' => 'Dicroglossidae Anderson, 1871',
                'bo_id' => 1
            ],
            [
                'ten_ho' => 'Gekkonidae Gray, 1825',
                'bo_id' => 3
            ],
            [
                'ten_ho' => 'Ichthyophiidae Taylor, 1968',
                'bo_id' => 2
            ],
            [
                'ten_ho' => 'Lacertidae Gray, 1825',
                'bo_id' => 3
            ],
            [
                'ten_ho' => 'Microhylidae',
                'bo_id' => 1
            ],
            [
                'ten_ho' => 'Pythonidae Fitzinger, 1826',
                'bo_id' => 3
            ],
            [
                'ten_ho' => 'Ranidae Rafinesque, 1814',
                'bo_id' => 1
            ],
            [
                'ten_ho' => 'Rhacophoridae Hoffman, 1932',
                'bo_id' => 1
            ],
            [
                'ten_ho' => 'Scincidae Opell, 1811',
                'bo_id' => 3
            ],
        ]);

        Excel::import(new SinhVatImport, 'C:\xampp\htdocs\TheAnimals\public\data-sinhvat.xlsx');
        Excel::import(new BaoTonImport, 'C:\xampp\htdocs\TheAnimals\public\data-baoton.xlsx');
        Excel::import(new ToaDoImport, 'C:\xampp\htdocs\TheAnimals\public\data-toado.xlsx');
        Excel::import(new MediaImport, 'C:\xampp\htdocs\TheAnimals\public\data-media.xlsx');


    }
}
