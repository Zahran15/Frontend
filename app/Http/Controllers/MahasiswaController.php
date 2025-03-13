<?php
namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use Illuminate\Http\Request;

class MahasiswaController extends Controller
{
    public function index()
    {
        $mahasiswa = Mahasiswa::all();
        return view('mahasiswa.index', compact('mahasiswa'));
    }

    public function create()
    {
        return view('mahasiswa.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nim' => 'required',
            'nama' => 'required|unique:mahasiswa',
            'email' => 'required|email|unique:mahasiswa',
            'alamat' => 'required',
            'nidn' => 'required',
        ]);

        Mahasiswa::create($request->all());

        return redirect()->route('mahasiswa.index');
    }

    public function edit(Mahasiswa $mahasiswa)
    {
        return view('mahasiswa.edit', compact('mahasiswa'));
    }

    public function update(Request $request, Mahasiswa $mahasiswa)
{
    $request->validate([
        'nim' => 'required',
        'nama' => 'required|unique:mahasiswa,nama,' . $mahasiswa->nim, // gunakan 'nim' jika 'id' tidak ada
        'email' => 'required|email|unique:mahasiswa,email,' . $mahasiswa->nim, // pastikan kolom email juga diperbaiki
        'alamat' => 'required',
        'nidn' => 'required',
    ]);

    $mahasiswa->update($request->all());

    return redirect()->route('mahasiswa.index');
}

    public function destroy(Mahasiswa $mahasiswa)
    {
        $mahasiswa->delete();

        return redirect()->route('mahasiswa.index');
    }
}
