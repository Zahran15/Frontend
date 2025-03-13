@extends('layouts.app')

@section('content')
    <h1>Edit Pertemuan Perwalian</h1>

    <form action="{{ route('pertemuanperwalian.update', $pertemuanperwalian->id_pertemuan) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label for="id_pertemuan" class="form-label">ID Pertemuan</label>
            <input type="int" class="form-control" id="id_pertemuan" name="id_pertemuan" value="{{ $pertemuanperwalian->id_pertemuan }}" required>
        </div>
        <div class="mb-3">
            <label for="tanggal" class="form-label">Tanggal</label>
            <input type="date" class="form-control" id="tanggal" name="tanggal" value="{{ $pertemuanperwalian->tanggal }}" required>
        </div>
        <div class="mb-3">
            <label for="topik" class="form-label">Topik</label>
            <input type="text" class="form-control" id="topik" name="topik" value="{{ $pertemuanperwalian->topik }}" required>
        </div>
        <div class="mb-3">
            <label for="catatan" class="form-label">Catatan</label>
            <textarea class="form-control" id="catatan" name="catatan">{{ $pertemuanperwalian->catatan }}</textarea>
        </div>
        <div class="mb-3">
            <label for="saran_akademik" class="form-label">Saran Akademik</label>
            <textarea class="form-control" id="saran_akademik" name="saran_akademik">{{ $pertemuanperwalian->saran_akademik }}</textarea>
        </div>
        <div class="mb-3">
            <label for="nim" class="form-label">NIM Mahasiswa</label>
            <input type="text" class="form-control" id="nim" name="nim" value="{{ $pertemuanperwalian->nim }}" required>
        </div>
        <div class="mb-3">
            <label for="nidn" class="form-label">NIDN Dosen Wali</label>
            <input type="text" class="form-control" id="nidn" name="nidn" value="{{ $pertemuanperwalian->nidn }}" required>
        </div>
        <div class="mb-3">
            <label for="bulan_tahun" class="form-label">Bulan Tahun</label>
            <input type="date" class="form-control" id="bulan_tahun" name="bulan_tahun" value="{{ $pertemuanperwalian->bulan_tahun }}" required>
        </div>

        <button type="submit" class="btn btn-primary">Perbarui</button>
    </form>
@endsection
