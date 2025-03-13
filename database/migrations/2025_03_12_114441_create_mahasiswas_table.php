<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('mahasiswas', function (Blueprint $table) {
        $table->id();
        $table->string('nim')->unique();
        $table->varchar('nama');
        $table->varchar('email'); // Menambahkan kolom email
        $table->string('alamat'); // Menambahkan kolom alamat
        $table->string('nidn')->nullable(); // Menambahkan kolom nidn (opsional)
        $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mahasiswas');
    }
};
