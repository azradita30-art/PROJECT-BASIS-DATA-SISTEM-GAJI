CREATE DATABASE db_payroll;
USE db_payroll;

-- 1. DEPARTEMEN
CREATE TABLE departemen (
    id_departemen VARCHAR(10) PRIMARY KEY,
    nama_departemen VARCHAR(100) NOT NULL
);

-- 2. JABATAN
CREATE TABLE jabatan (
    id_jabatan VARCHAR(10) PRIMARY KEY,
    id_departemen VARCHAR(10) NOT NULL,
    nama_jabatan VARCHAR(100) NOT NULL,
    gaji_pokok DECIMAL(12,2) NOT NULL,

    CONSTRAINT fk_jabatan_departemen
    FOREIGN KEY (id_departemen)
    REFERENCES departemen(id_departemen)
);

-- 3. TUNJANGAN
CREATE TABLE tunjangan (
    id_tunjangan VARCHAR(10) PRIMARY KEY,
    id_jabatan VARCHAR(10) NOT NULL,
    nama_tunjangan VARCHAR(100) NOT NULL,
    nominal_tunjangan DECIMAL(12,2) NOT NULL,

    CONSTRAINT fk_tunjangan_jabatan
    FOREIGN KEY (id_jabatan)
    REFERENCES jabatan(id_jabatan)
);

-- 4. KARYAWAN
CREATE TABLE karyawan (
    id_karyawan VARCHAR(10) PRIMARY KEY,
    id_jabatan VARCHAR(10) NOT NULL,
    nik VARCHAR(20) NOT NULL UNIQUE,
    nama_karyawan VARCHAR(100) NOT NULL,
    jenis_kelamin CHAR(1),
    alamat TEXT,
    no_hp VARCHAR(15),
    email VARCHAR(100),
    tanggal_masuk DATE,
    status_karyawan VARCHAR(20),

    CONSTRAINT fk_karyawan_jabatan
    FOREIGN KEY (id_jabatan)
    REFERENCES jabatan(id_jabatan)
);

-- 5. PRESENSI
CREATE TABLE presensi (
    id_presensi VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL,
    tanggal DATE NOT NULL,
    jam_masuk TIME,
    jam_keluar TIME,
    status_hadir VARCHAR(20),

    CONSTRAINT fk_presensi_karyawan
    FOREIGN KEY (id_karyawan)
    REFERENCES karyawan(id_karyawan)
);

-- 6. LEMBUR
CREATE TABLE lembur (
    id_lembur VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL,
    tanggal_lembur DATE NOT NULL,
    jumlah_jam DECIMAL(4,2) NOT NULL,
    tarif_per_jam DECIMAL(12,2) NOT NULL,
    status_persetujuan VARCHAR(20),

    CONSTRAINT fk_lembur_karyawan
    FOREIGN KEY (id_karyawan)
    REFERENCES karyawan(id_karyawan)
);

-- 7. POTONGAN
CREATE TABLE potongan (
    id_potongan VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL,
    jenis_potongan VARCHAR(100) NOT NULL,
    jumlah_potongan DECIMAL(12,2) NOT NULL,
    tanggal_potongan DATE NOT NULL,

    CONSTRAINT fk_potongan_karyawan
    FOREIGN KEY (id_karyawan)
    REFERENCES karyawan(id_karyawan)
);

-- 8. PAJAK
CREATE TABLE pajak (
    id_pajak VARCHAR(10) PRIMARY KEY,
    jenis_pajak VARCHAR(50) NOT NULL,
    persentase_pajak DECIMAL(5,2) NOT NULL
);

-- 9. PERIODE GAJI
CREATE TABLE periode_gaji (
    id_periode VARCHAR(10) PRIMARY KEY,
    tanggal_mulai DATE NOT NULL,
    tanggal_selesai DATE NOT NULL
);

-- 10. SLIP GAJI
CREATE TABLE slip_gaji (
    id_slip VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL,
    id_periode VARCHAR(10) NOT NULL,
    id_pajak VARCHAR(10) NOT NULL,
    tanggal_cetak DATE NOT NULL,
    total_gaji_pokok DECIMAL(12,2) DEFAULT 0,
    total_tunjangan DECIMAL(12,2) DEFAULT 0,
    total_lembur DECIMAL(12,2) DEFAULT 0,
    total_potongan DECIMAL(12,2) DEFAULT 0,
    total_pajak DECIMAL(12,2) DEFAULT 0,
    gaji_bersih DECIMAL(12,2) DEFAULT 0,

    CONSTRAINT fk_slip_karyawan
    FOREIGN KEY (id_karyawan)
    REFERENCES karyawan(id_karyawan),

    CONSTRAINT fk_slip_periode
    FOREIGN KEY (id_periode)
    REFERENCES periode_gaji(id_periode),

    CONSTRAINT fk_slip_pajak
    FOREIGN KEY (id_pajak)
    REFERENCES pajak(id_pajak)
);

-- 11. KOMPONEN GAJI (hasil normalisasi)
CREATE TABLE komponen_gaji (
    id_komponen VARCHAR(10) PRIMARY KEY,
    nama_komponen VARCHAR(100) NOT NULL,
    jenis_komponen VARCHAR(20) NOT NULL
);

-- 12. DETAIL SLIP GAJI (3NF)
CREATE TABLE detail_slip_gaji (
    id_detail_slip VARCHAR(10) PRIMARY KEY,
    id_slip VARCHAR(10) NOT NULL,
    id_komponen VARCHAR(10) NOT NULL,
    jumlah DECIMAL(12,2) NOT NULL,

    CONSTRAINT fk_detail_slip
    FOREIGN KEY (id_slip)
    REFERENCES slip_gaji(id_slip),

    CONSTRAINT fk_detail_komponen
    FOREIGN KEY (id_komponen)
    REFERENCES komponen_gaji(id_komponen)
);