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
        Schema::create('bao_ton', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('loai_tt');
            $table->string('tinh_trang');
            $table->unsignedBigInteger('sinhvat_id')->nullable();
            $table->foreign('sinhvat_id')->references('id')->on('sinh_vat')
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
        Schema::dropIfExists('bao_ton');
    }
};
