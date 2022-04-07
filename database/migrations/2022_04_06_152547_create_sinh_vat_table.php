<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sinh_vat', function (Blueprint $table) {
            $table->bigIncrements('id')->unsigned();
            $table->string('ten_khoa_hoc');
            $table->string('ten_tieng_viet');
            $table->string('ten_dia_phuong');
            $table->string('mo_ta_hinh_thai',5000);
            $table->string('mo_ta_sinh_thai',5000);
            $table->string('gia_tri_su_dung');
            $table->string('sinh_canh');
            $table->unsignedBigInteger('ho_id')->nullable();
            $table->foreign('ho_id')->references('id')->on('ho')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('media');
        Schema::dropIfExists('toa_do');
        Schema::dropIfExists('bao_ton');
        Schema::dropIfExists('sinh_vat');
    }
};
