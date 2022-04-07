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
        Schema::create('ho', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('ten_ho');
            $table->unsignedBigInteger('bo_id')->nullable();
            $table->foreign('bo_id')->references('id')->on('bo')
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
        Schema::dropIfExists('ho');
    }
};
