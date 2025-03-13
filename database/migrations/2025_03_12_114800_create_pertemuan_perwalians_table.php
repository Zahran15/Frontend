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
        Schema::create('pertemuan_perwalians', function (Blueprint $table) {
            $table->id();
            $table->int('id_pertemuan');
            $table->varchar('topik'); // Menambahkan kolom email
            $table->varchar('catatan');
            $table->varchar('saran_akademik');
            $table->varchar('nim'); 
            $table->varchar('nidn');
            $table->varchar('bulan_tahun');
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pertemuan_perwalians');
    }
};
