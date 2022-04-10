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
        Schema::create('toa_do', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('loai_toa_do');
            $table->string('toa_do');
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
        Schema::dropIfExists('toa_do');
    }
};
