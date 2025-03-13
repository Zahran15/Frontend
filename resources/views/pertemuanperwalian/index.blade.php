@extends('layouts.app')

@section('content')
    <h1>Data Pertemuan Perwalian</h1>
    <a href="{{ route('pertemuanperwalian.create') }}" class="btn btn-primary mb-3">Tambah Pertemuan Perwalian</a>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID Pertemuan</th>
                <th>Tanggal</th>
                <th>Topik</th>
                <th>Catatan</th>
                <th>Saran Akademik</th>
                <th>NIM</th>
                <th>NIDN</th>
                <th>Tahun Bulan</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($pertemuanperwalian as $pertemuan)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $pertemuan->tanggal }}</td>
                    <td>{{ $pertemuan->topik }}</td>
                    <td>{{ $pertemuan->catatan }}</td>
                    <td>{{ $pertemuan->saran_akademik }}</td>
                    <td>{{ $pertemuan->nim }}</td>
                    <td>{{ $pertemuan->nidn }}</td>
                    <td>{{ $pertemuan->bulan_tahun }}</td>
                    <td>
                        <a href="{{ route('pertemuanperwalian.edit', $pertemuan->id_pertemuan) }}" class="btn btn-warning">Edit</a>
                        <form action="{{ route('pertemuanperwalian.destroy', $pertemuan->id_pertemuan) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus?')">Hapus</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
