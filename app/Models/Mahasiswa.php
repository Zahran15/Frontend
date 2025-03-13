<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    use HasFactory;

    protected $table = 'mahasiswa';
    protected $primaryKey = 'nim';
    public $incrementing = false; // Karena primary key-nya bukan auto-increment
    protected $keyType = 'string'; // Kalau NPM dalam bentuk string
    public $timestamps = false; // Matikan timestamps

    protected $fillable = ['nim', 'nama', 'email', 'alamat', 'nidn'];
}