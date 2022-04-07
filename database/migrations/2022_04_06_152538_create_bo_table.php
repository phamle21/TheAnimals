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
        Schema::create('bo', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('ten_bo');
            $table->unsignedBigInteger('lop_id')->nullable();
            $table->foreign('lop_id')->references('id')->on('lop')
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
        Schema::dropIfExists('bo');
    }
};
