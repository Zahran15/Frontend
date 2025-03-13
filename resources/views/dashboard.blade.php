@extends('layouts.app')

@section('title', 'Dashboard - Sistem Perwalian Mahasiswa')

@section('content')
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12 text-center mb-4">
                <h1 class="display-4">Dashboard</h1>
                <p class="lead">Selamat datang di Sistem Perwalian Mahasiswa. Silakan pilih menu di sidebar.</p>
            </div>
        </div>

        <div class="row">
            <!-- Kartu Statistik 1 -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card text-white bg-primary">
                    <div class="card-body">
                        <h5 class="card-title">Mahasiswa</h5>
                    </div>
                </div>
            </div>

            <!-- Kartu Statistik 2 -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card text-white bg-success">
                    <div class="card-body">
                        <h5 class="card-title">Dosen Wali</h5>
    
                    </div>
                </div>
            </div>

            <!-- Kartu Statistik 3 -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card text-white bg-warning">
                    <div class="card-body">
                        <h5 class="card-title">Pertemuan Perwalian</h5>
                        
                    </div>
                </div>
            </div>

        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-info" role="alert">
                    <strong>Info!</strong> Silakan pilih menu di sidebar untuk mengelola perwalian mahasiswa.
                </div>
            </div>
        </div>
    </div>
@endsection
