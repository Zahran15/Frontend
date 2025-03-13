<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PertemuanPerwalian extends Model
{
    use HasFactory;

    protected $table = 'pertemuan_perwalian';
    protected $primaryKey = 'id_pertemuan';
    public $incrementing = false; // Karena primary key-nya bukan auto-increment
    protected $keyType = 'string'; // Kalau NPM dalam bentuk string
    public $timestamps = false; // Matikan timestamps

    protected $fillable = ['id_pertemuan', 'tanggal', 'topik', 'catatan', 'saran_akademik', 'nim', 'nidn','bulan_tahun'];
}