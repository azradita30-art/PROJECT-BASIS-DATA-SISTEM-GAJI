# 🏢 Sistem Basis Data Penggajian Karyawan - Enterprise Payroll Layout

---

## 📌 Identitas Proyek & Tim Pengembang

Dokumentasi ini disusun sebagai laporan utama luaran akademik untuk proyek mata kuliah Sistem Basis Data. **Sistem Basis Data Penggajian Karyawan (db_payroll)** ini dirancang secara terstruktur untuk mengotomatisasi proses penggajian, pencatatan kehadiran, dan perhitungan kompensasi kerja secara terintegrasi.

* **Judul Laporan:** Laporan Project Basis Data - Sistem Basis Data Penggajian Karyawan (Sistem Payroll)
* **Institusi:** Program Studi S1 Statistika, Jurusan Matematika, Fakultas Matematika dan Ilmu Pengetahuan Alam, Universitas Jenderal Soedirman (UNSOED), Purwokerto.
* **Tahun Akademik:** 2026
* **Tim Pengembang (Kelompok C):**
  
  | No | Nama Pengembang | Nomor Induk Mahasiswa (NIM) |
  | :---: | :--- | :---: |
  | 1 | **Azra Dita Nurcahyati** | K1D024041 | 
  | 2 | **Nadia Marsha** | K1D024046 |
  | 3 | **Nur Aliyah Zizi Hamidah** | K1D024053 |
  | 4 | **Affifah Tharra Arendra** | K1D024067 |
* **Dosen Pengampu:** Luthfia Maharani, S.Stat., M.Stat.

---

## 📑 BAB I: PENDAHULUAN

### 1.1 Latar Belakang
Perkembangan teknologi informasi telah mendorong berbagai perusahaan untuk memanfaatkan sistem berbasis komputer dalam mendukung aktivitas operasional, termasuk dalam pengelolaan sumber daya manusia. Salah satu proses penting yang membutuhkan pengelolaan data secara akurat dan efisien adalah proses penggajian karyawan (payroll). Penggajian tidak hanya berkaitan dengan pemberian gaji pokok, tetapi juga melibatkan perhitungan tunjangan, lembur, potongan, pajak, serta penyusunan slip gaji setiap periode tertentu.

Pada banyak perusahaan, proses penggajian yang masih dilakukan secara manual sering kali menimbulkan berbagai permasalahan, seperti kesalahan perhitungan, duplikasi data, keterlambatan penyajian laporan, serta kesulitan dalam melakukan pencarian dan pengelolaan data karyawan. Kondisi tersebut dapat mempengaruhi efektivitas kerja bagian sumber daya manusia (HRD) maupun keuangan, serta berpotensi menimbulkan ketidakpuasan karyawan terhadap hasil penggajian yang diterima.

Untuk mengatasi permasalahan tersebut, diperlukan suatu sistem basis data yang mampu mengelola seluruh informasi terkait penggajian secara terintegrasi. Sistem Penggajian (Payroll) dirancang untuk menyimpan, mengolah, dan menyediakan informasi mengenai data karyawan, jabatan, presensi, lembur, potongan, pajak, hingga slip gaji secara terstruktur. Dengan adanya sistem ini, proses penggajian diharapkan dapat dilakukan dengan lebih cepat, akurat, efektif, dan meminimalkan terjadinya kesalahan dalam pengelolaan data.

Berdasarkan permasalahan tersebut, diperlukan perancangan basis data Sistem Penggajian yang mampu mengintegrasikan berbagai data terkait penggajian, sehingga proses pengelolaan data karyawan, perhitungan gaji, dan penyusunan laporan dapat dilakukan secara lebih efektif, efisien, dan akurat.

### 1.2 Rumusan Masalah
Adapun Rumusan Masalah yang dibahas, yaitu:
1. Bagaimana menganalisis kebutuhan Sistem Penggajian (Payroll), meliputi identifikasi pengguna, kebutuhan fungsional, dan aturan bisnis yang berlaku?
2. Bagaimana merancang basis data Sistem Penggajian menggunakan Entity Relationship Diagram (ERD) serta memetakannya ke dalam skema relasional (logical design) yang sesuai dengan kebutuhan sistem?
3. Bagaimana menerapkan proses normalisasi basis data hingga bentuk normal ketiga (3NF) untuk menghasilkan struktur data yang efisien dan meminimalkan redundansi?
4. Bagaimana mengimplementasikan basis data Sistem Penggajian menggunakan MySQL, termasuk pembuatan tabel, relasi, constraint, serta pengisian data dummy yang realistis?
5. Bagaimana menyusun berbagai query SQL dan objek basis data lanjutan, seperti view, stored procedure, trigger, dan function, untuk mendukung proses pengelolaan penggajian?

### 1.3 Tujuan
Adapun Tujuan dari proyek ini, yaitu:
1. Mengidentifikasi kebutuhan Sistem Penggajian (Payroll), meliputi pengguna sistem, kebutuhan fungsional, dan aturan bisnis yang berlaku.
2. Merancang basis data Sistem Penggajian menggunakan Entity Relationship Diagram (ERD) serta memetakannya ke dalam skema relasional (logical design) yang sesuai dengan kebutuhan sistem.
3. Menerapkan proses normalisasi basis data hingga bentuk normal ketiga (3NF) untuk menghasilkan struktur basis data yang efisien, terorganisir, dan meminimalkan redundansi data.
4. Mengimplementasikan basis data Sistem Penggajian menggunakan MySQL melalui pembuatan tabel, relasi, constraint, serta pengisian data dummy yang realistis.
5. Menyusun query SQL dan mengembangkan objek basis data lanjutan, seperti view, stored procedure, trigger, dan function, guna mendukung pengelolaan data penggajian secara efektif.

### 1.4 Manfaat
Penelitian ini diharapkan memberikan Manfaat sebagai berikut:
1. Membantu pengelolaan data penggajian karyawan agar lebih terstruktur, terintegrasi, dan mudah diakses.
2. Meningkatkan efisiensi serta akurasi dalam proses perhitungan gaji, tunjangan, lembur, potongan, dan pajak karyawan.
3. Mengurangi risiko terjadinya kesalahan, redundansi, dan inkonsistensi data dalam proses penggajian.
4. Mempermudah penyusunan laporan dan penyajian informasi penggajian secara cepat dan tepat.
5. Menjadi sarana penerapan konsep basis data, seperti perancangan ERD, normalisasi, implementasi SQL, serta penggunaan objek basis data lanjutan pada studi kasus nyata.

---

## ⚙️ BAB II: ANALISIS KEBUTUHAN

### 2.1 Deskripsi Studi Kasus dan Ruang Lingkup
#### Deskripsi Studi Kasus
Pada banyak perusahaan, proses pengelolaan penggajian melibatkan berbagai jenis data yang saling berkaitan, seperti data departemen, jabatan, karyawan, presensi, lembur, tunjangan, potongan, pajak, serta periode penggajian. Kompleksitas data tersebut menyebabkan proses penggajian menjadi cukup rumit, terutama jika masih dilakukan secara manual menggunakan dokumen fisik atau aplikasi spreadsheet sederhana. Kondisi tersebut dapat meningkatkan risiko terjadinya kesalahan pencatatan data, kesalahan perhitungan gaji, keterlambatan pembayaran, duplikasi data, serta kesulitan dalam penyusunan laporan penggajian.

Berdasarkan permasalahan tersebut, diperlukan sebuah Sistem Informasi Penggajian (Payroll System) yang mampu mengintegrasikan seluruh data yang berkaitan dengan proses penggajian dalam satu basis data terpusat. Sistem ini dirancang untuk membantu bagian Human Resource Department (HRD) dan bagian Keuangan dalam mengelola data karyawan, mencatat kehadiran, mengelola data lembur, menghitung tunjangan dan potongan, menghitung pajak, hingga menghasilkan slip gaji secara otomatis.

Dalam sistem ini, setiap karyawan ditempatkan pada suatu jabatan yang berada dalam departemen tertentu. Jabatan yang dimiliki karyawan menentukan besaran gaji pokok dan tunjangan yang akan diterima. Selain itu, sistem juga mencatat data presensi sebagai dasar pemantauan kehadiran karyawan serta data lembur yang dapat menambah pendapatan karyawan. Di sisi lain, sistem juga mengelola berbagai jenis potongan dan pajak yang akan mengurangi jumlah penghasilan yang diterima.

Proses penggajian dilakukan berdasarkan periode tertentu, misalnya bulanan. Pada akhir setiap periode penggajian, sistem akan melakukan perhitungan gaji secara otomatis dengan mengakumulasi seluruh komponen penghasilan dan pengurangan yang dimiliki setiap karyawan. Hasil perhitungan tersebut kemudian disimpan dalam bentuk slip gaji yang berisi rincian gaji pokok, tunjangan, lembur, potongan, pajak, serta gaji bersih yang diterima karyawan.

#### Ruang Lingkup Sistem
1. Pengelolaan data departemen dan jabatan.
2. Pengelolaan data karyawan.
3. Pencatatan presensi.
4. Pengelolaan lembur.
5. Pengelolaan tunjangan dan potongan.
6. Pengelolaan pajak.
7. Pengelolaan periode gaji.
8. Perhitungan gaji otomatis.
9. Pembuatan dan pencetakan slip gaji.
10. Penyimpanan detail komponen gaji.

### 2.2 Identifikasi Aktor (Pengguna)
1. **Admin Human Resource Department (HRD)**
   Bertanggung jawab dalam pengelolaan data sumber daya manusia yang digunakan dalam proses penggajian.
   * *Tugas:* Mengelola data departemen, jabatan, karyawan, presensi karyawan, lembur, tunjangan, potongan, dan periode penggajian.
2. **Staff Payroll**
   Bertugas mengelola dan melakukan perhitungan gaji karyawan berdasarkan data kehadiran, jabatan, tunjangan, dan potongan yang berlaku.
   * *Tugas:* Mengelola data pajak, menghitung total penghasilan karyawan, menghitung pajak dan potongan gaji, membuat slip gaji, serta mencetak laporan penggajian.
3. **Staff (Karyawan)**
   Menerima informasi hasil penggajian berupa slip gaji dan rincian komponen gaji.
   * *Tugas:* Melihat data pribadi, melihat riwayat kehadiran, melihat informasi lembur, serta melihat dan mencetak slip gaji.

### 2.3 Daftar Kebutuhan Fungsional Data
* **Pengelolaan Data Departemen:** Menambah, mengubah, menghapus, dan menampilkan data divisi departemen.
* **Pengelolaan Data Jabatan:** Menyimpan informasi posisi kerja, departemen, serta gaji pokok dasar.
* **Pengelolaan Data Karyawan:** Mengelola NIK, nama, jenis kelamin, alamat, nomor telepon, email, tanggal masuk, status, dan jabatan karyawan.
* **Pengelolaan Data Presensi:** Mencatat kehadiran harian (tanggal, jam masuk, jam keluar, status hadir).
* **Pengelolaan Data Lembur:** Mencatat tanggal lembur, jumlah jam, tarif per jam, dan status persetujuan.
* **Pengelolaan Data Tunjangan & Potongan:** Mengatur nominal penambah (tunjangan) dan pengurang (potongan) gaji karyawan.
* **Pengelolaan Data Pajak & Periode Gaji:** Mengatur persentase pajak dan rentang siklus pembayaran gaji.
* **Perhitungan Gaji Otomatis & Slip Gaji:** Mengkalkulasi pendapatan kotor dan bersih, serta menerbitkan rincian slip gaji yang tersimpan sebagai riwayat penggajian.

### 2.4 Aturan Bisnis (Business Rules)
1. Setiap karyawan hanya dapat terdaftar pada satu jabatan aktif dalam satu periode kerja.
2. Setiap karyawan wajib memiliki `id_karyawan` yang unik dan tidak boleh sama dengan karyawan lainnya.
3. Gaji pokok karyawan ditentukan berdasarkan jabatan yang dimiliki.
4. Tunjangan diberikan sesuai dengan kebijakan perusahaan dan jabatan karyawan.
5. Data presensi karyawan harus dicatat setiap hari kerja sebagai dasar evaluasi kehadiran.
6. Karyawan yang tidak hadir tanpa keterangan dapat dikenakan potongan gaji sesuai ketentuan perusahaan.
7. Lembur hanya dapat dihitung apabila telah mendapatkan persetujuan dari atasan atau manajer terkait.
8. Total upah lembur dihitung berdasarkan jumlah jam lembur dan tarif lembur yang berlaku.
9. Setiap potongan gaji harus memiliki jenis potongan dan nominal yang jelas.
10. Pajak penghasilan karyawan dihitung berdasarkan persentase pajak yang telah ditetapkan perusahaan atau peraturan perpajakan yang berlaku.
11. Setiap karyawan hanya dapat memiliki satu slip gaji pada satu periode penggajian.
12. Slip gaji harus memuat rincian gaji pokok, tunjangan, lembur, potongan, pajak, dan gaji bersih.
13. Gaji kotor dihitung dengan rumus:
    $$\text{Gaji Kotor} = \text{Gaji Pokok} + \text{Tunjangan} + \text{Upah Lembur}$$
14. Gaji bersih dihitung dengan rumus:
    $$\text{Gaji Bersih} = \text{Gaji Pokok} + \text{Tunjangan} + \text{Upah Lembur} - \text{Potongan} - \text{Pajak}$$
15. Seluruh data penggajian yang telah diproses harus disimpan sebagai arsip perusahaan dan tidak dapat dihapus tanpa otorisasi administrator.
16. Karyawan yang berstatus tidak aktif atau telah mengundurkan diri tidak dapat dimasukkan ke dalam periode penggajian berikutnya.
17. Setiap perubahan data gaji, tunjangan, atau potongan harus dilakukan oleh pengguna yang memiliki hak akses yang sesuai.

---

## 🗺️ BAB III: PERANCANGAN BASIS DATA

### 3.1 Identifikasi Entitas & Atribut (Skema Logis 3NF)
Rancangan database penggajian ini terdiri atas **12 tabel** hasil normalisasi hingga Third Normal Form (3NF) guna menghindari anomali data:

*   **`departemen`** (`id_departemen` **PK**, `nama_departemen`)
*   **`jabatan`** (`id_jabatan` **PK**, `id_departemen` **FK**, `nama_jabatan`, `gaji_pokok`)
*   **`tunjangan`** (`id_tunjangan` **PK**, `id_jabatan` **FK**, `nama_tunjangan`, `nominal_tunjangan`)
*   **`karyawan`** (`id_karyawan` **PK**, `id_jabatan` **FK**, `nik` **UK**, `nama_karyawan`, `jenis_kelamin`, `alamat`, `no_hp`, `email`, `tanggal_masuk`, `status_karyawan`)
*   **`presensi`** (`id_presensi` **PK**, `id_karyawan` **FK**, `tanggal`, `jam_masuk`, `jam_keluar`, `status_hadir`)
*   **`lembur`** (`id_lembur` **PK**, `id_karyawan` **FK**, `tanggal_lembur`, `jumlah_jam`, `tarif_per_jam`, `status_persetujuan`)
*   **`potongan`** (`id_potongan` **PK**, `id_karyawan` **FK**, `jenis_potongan`, `jumlah_potongan`, `tanggal_potongan`)
*   **`pajak`** (`id_pajak` **PK**, `jenis_pajak`, `persentase_pajak`)
*   **`periode_gaji`** (`id_periode` **PK**, `tanggal_mulai`, `tanggal_selesai`)
*   **`slip_gaji`** (`id_slip` **PK**, `id_karyawan` **FK**, `id_periode` **FK**, `id_pajak` **FK**, `tanggal_cetak`, `total_gaji_pokok`, `total_tunjangan`, `total_lembur`, `total_potongan`, `total_pajak`, `gaji_bersih`)
*   **`komponen_gaji`** (`id_komponen` **PK**, `nama_komponen`, `jenis_komponen`)
*   **`detail_slip_gaji`** (`id_detail_slip` **PK**, `id_slip` **FK**, `id_komponen` **FK**, `jumlah`)
*   **`log_presensi`** (`id_log` **PK**, `id_presensi`, `tanggal_log`)

### 3.2 Relasi dan Kardinalitas
Kardinalitas hubungan antar entitas didefinisikan sebagai berikut:

| No | Entitas 1 | Relasi | Entitas 2 | Kardinalitas |
|---|---|---|---|---|
| 1 | Departemen | memiliki | Jabatan | 1 : M |
| 2 | Jabatan | memiliki | Tunjangan | 1 : M |
| 3 | Jabatan | ditempati oleh | Karyawan | 1 : M |
| 4 | Karyawan | memiliki | Presensi | 1 : M |
| 5 | Karyawan | melakukan | Lembur | 1 : M |
| 6 | Karyawan | memiliki | Potongan | 1 : M |
| 7 | Karyawan | memiliki | Slip_Gaji | 1 : M |
| 8 | Periode_Gaji | digunakan pada | Slip_Gaji | 1 : M |
| 9 | Pajak | digunakan pada | Slip_Gaji | 1 : M |
| 10 | Slip_Gaji | memiliki | Detail_Slip_Gaji | 1 : M |
| 11 | Komponen Gaji | digunakan pada | Detail_Slip_Gaji | 1 : M |

#### Penjelasan Hubungan Antar Entitas
* **Departemen – Jabatan (1 : M):** Satu departemen dapat memiliki banyak jabatan, sedangkan satu jabatan hanya berada pada satu departemen.
* **Jabatan – Tunjangan (1 : M):** Satu jabatan dapat memiliki lebih dari satu jenis tunjangan, sedangkan satu tunjangan hanya terkait dengan satu jabatan.
* **Jabatan – Karyawan (1 : M):** Satu jabatan dapat ditempati oleh banyak karyawan, sedangkan satu karyawan hanya memiliki satu jabatan aktif.
* **Karyawan – Presensi / Lembur / Potongan (1 : M):** Satu karyawan dapat memiliki banyak data presensi, lembur, dan potongan gaji harian, sedangkan masing-masing catatan transaksi hanya dimiliki oleh satu karyawan terkait.
* **Karyawan / Periode_Gaji / Pajak – Slip_Gaji (1 : M):** Satu karyawan dapat menerima banyak slip gaji bulanan pada periode berbeda, satu periode digunakan untuk mencetak banyak slip karyawan, dan satu jenis pajak dapat diterapkan pada banyak slip gaji.
* **Slip_Gaji – Detail_Slip_Gaji – Komponen_Gaji (1 : M):** Satu slip gaji memiliki banyak rincian komponen pendapatan/potongan pada tabel detail, dan satu jenis komponen gaji master dapat direferensikan oleh banyak baris detail slip.

### 3.3 Diagram Hubungan Entitas (ERD)
Visualisasi diagram hubungan entitas (*Entity Relationship Diagram*) menggunakan notasi Crow's Foot untuk menggambarkan keterkaitan data secara menyeluruh:

![Diagram ERD db_payroll](https://github.com/azradita30-art/PROJECT-BASIS-DATA-SISTEM-GAJI/blob/main/ERD.jpeg)

---

## 💾 BAB IV: IMPLEMENTASI DATABASE & DATA (DML)

Implementasi dilakukan menggunakan MySQL sebagai Database Management System (DBMS). Semua tabel dirancang berdasarkan struktur 3NF dengan detail sintaks berikut:

### 4.1 Pembuatan Tabel (DDL - Data Definition Language)
Sintaks lengkap pembuatan database dan tabel master serta transaksi terdapat pada berkas [01_ddl.sql](file:///d:/Statistika/Tugas/Basdat/project/Payroll/01_ddl.sql):
```sql
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
    CONSTRAINT fk_jabatan_departemen FOREIGN KEY (id_departemen) REFERENCES departemen(id_departemen)
);

-- 3. TUNJANGAN
CREATE TABLE tunjangan (
    id_tunjangan VARCHAR(10) PRIMARY KEY,
    id_jabatan VARCHAR(10) NOT NULL,
    nama_tunjangan VARCHAR(100) NOT NULL,
    nominal_tunjangan DECIMAL(12,2) NOT NULL,
    CONSTRAINT fk_tunjangan_jabatan FOREIGN KEY (id_jabatan) REFERENCES jabatan(id_jabatan)
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
    CONSTRAINT fk_karyawan_jabatan FOREIGN KEY (id_jabatan) REFERENCES jabatan(id_jabatan)
);

-- 5. PRESENSI
CREATE TABLE presensi (
    id_presensi VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL,
    tanggal DATE NOT NULL,
    jam_masuk TIME,
    jam_keluar TIME,
    status_hadir VARCHAR(20),
    CONSTRAINT fk_presensi_karyawan FOREIGN KEY (id_karyawan) REFERENCES karyawan(id_karyawan)
);

-- 6. LEMBUR
CREATE TABLE lembur (
    id_lembur VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL,
    tanggal_lembur DATE NOT NULL,
    jumlah_jam DECIMAL(4,2) NOT NULL,
    tarif_per_jam DECIMAL(12,2) NOT NULL,
    status_persetujuan VARCHAR(20),
    CONSTRAINT fk_lembur_karyawan FOREIGN KEY (id_karyawan) REFERENCES karyawan(id_karyawan)
);

-- 7. POTONGAN
CREATE TABLE potongan (
    id_potongan VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL,
    jenis_potongan VARCHAR(100) NOT NULL,
    jumlah_potongan DECIMAL(12,2) NOT NULL,
    tanggal_potongan DATE NOT NULL,
    CONSTRAINT fk_potongan_karyawan FOREIGN KEY (id_karyawan) REFERENCES karyawan(id_karyawan)
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
    CONSTRAINT fk_slip_karyawan FOREIGN KEY (id_karyawan) REFERENCES karyawan(id_karyawan),
    CONSTRAINT fk_slip_periode FOREIGN KEY (id_periode) REFERENCES periode_gaji(id_periode),
    CONSTRAINT fk_slip_pajak FOREIGN KEY (id_pajak) REFERENCES pajak(id_pajak)
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
    CONSTRAINT fk_detail_slip FOREIGN KEY (id_slip) REFERENCES slip_gaji(id_slip),
    CONSTRAINT fk_detail_komponen FOREIGN KEY (id_komponen) REFERENCES komponen_gaji(id_komponen)
);
```

### 4.2 Pengisian Data Awal (DML - Data Manipulation Language)
Pengisian data master dan operasional terperinci (dummy data) terdapat pada berkas [02_dml.sql](file:///d:/Statistika/Tugas/Basdat/project/Payroll/02_dml.sql) untuk mensimulasikan operasional perusahaan secara nyata. Berikut adalah intisari instruksi penyisipan data:
```sql
-- Pengisian 5 Departemen
INSERT INTO departemen (id_departemen,nama_departemen) VALUES
('K1A0', 'Human Resource'),
('K1B0', 'Keuangan'),
('K1C0', 'Event Management'),
('K1D0', 'Produksi'),
('K1E0', 'Marketing');

-- Pengisian Jabatan Master (Gaji Pokok)
INSERT INTO jabatan (id_jabatan,id_departemen,nama_jabatan,gaji_pokok) VALUES
('K1A01','K1A0','HR Manager',10000000),
('K1A02','K1A0','HR Administrator',5000000),
('K1B01','K1B0','Chief Financial Officer',30000000);

-- Pengisian Pajak Master
INSERT INTO pajak (id_pajak,jenis_pajak,persentase_pajak) VALUES
('PPH01','PPh Karyawan Kontrak',2.50),
('PPH02','PPh Karyawan Tetap',5.00);

-- Pengisian Karyawan Master
INSERT INTO karyawan (id_karyawan,id_jabatan,nik,nama_karyawan,jenis_kelamin,alamat,no_hp,email,tanggal_masuk,status_karyawan) VALUES
('KR001','K1A01','3273010001','Andi Pratama','L','Jakarta','08111111001','andi@entertainment.com','2022-01-10','Tetap');
```

---

## 🚀 BAB V: IMPLEMENTASI OBJEK PROGRAMMABLE & PENGUJIAN QUERY

### 5.1 Kumpulan Query Analisis & Laporan (10 Query Utama)
Berikut adalah kumpulan kueri dari berkas [03_query.sql](file:///d:/Statistika/Tugas/Basdat/project/Payroll/03_query.sql) untuk menganalisis data operasional dan keuangan pada sistem payroll:

#### A. Kueri Sederhana (3 Query)
1. **Menampilkan seluruh data karyawan aktif:**
   ```sql
   SELECT * FROM karyawan;
   ```
2. **Menampilkan jabatan dengan gaji pokok di atas Rp 5.000.000:**
   ```sql
   SELECT * FROM jabatan WHERE gaji_pokok > 5000000;
   ```
3. **Menampilkan catatan presensi karyawan yang berstatus terlambat:**
   ```sql
   SELECT * FROM presensi WHERE status_hadir = 'Terlambat';
   ```

#### B. Kueri JOIN Kompleks (4 Query)
1. **Menampilkan profil karyawan lengkap beserta nama jabatan dan departemennya:**
   ```sql
   SELECT k.nama_karyawan, j.nama_jabatan, d.nama_departemen
   FROM karyawan k
   JOIN jabatan j ON k.id_jabatan = j.id_jabatan
   JOIN departemen d ON j.id_departemen = d.id_departemen;
   ```
2. **Menampilkan rincian slip gaji bersih bulanan yang diterima karyawan per periode:**
   ```sql
   SELECT s.id_slip, k.nama_karyawan, p.tanggal_mulai, p.tanggal_selesai, s.gaji_bersih
   FROM slip_gaji s
   JOIN karyawan k ON s.id_karyawan = k.id_karyawan
   JOIN periode_gaji p ON s.id_periode = p.id_periode;
   ```
3. **Menampilkan riwayat dan status persetujuan lembur karyawan:**
   ```sql
   SELECT k.nama_karyawan, l.tanggal_lembur, l.jumlah_jam, l.status_persetujuan
   FROM karyawan k
   JOIN lembur l ON k.id_karyawan = l.id_karyawan;
   ```
4. **Menghitung total frekuensi keterlambatan masing-masing karyawan:**
   ```sql
   SELECT k.id_karyawan, k.nama_karyawan, COUNT(*) AS jumlah_terlambat
   FROM karyawan k
   JOIN presensi p ON k.id_karyawan = p.id_karyawan
   WHERE p.status_hadir = 'Terlambat'
   GROUP BY k.id_karyawan, k.nama_karyawan;
   ```

#### C. Kueri Subquery & CTE (2 Query)
1. **Mencari karyawan yang menempati jabatan dengan gaji pokok > Rp 8.000.000 (Subquery):**
   ```sql
   SELECT * FROM karyawan
   WHERE id_jabatan IN (
       SELECT id_jabatan FROM jabatan WHERE gaji_pokok > 8000000
   );
   ```
2. **Menghitung total akumulasi jam lembur per karyawan menggunakan Common Table Expression (CTE):**
   ```sql
   WITH total_lembur AS (
      SELECT id_karyawan, SUM(jumlah_jam) AS total_jam
      FROM lembur
      GROUP BY id_karyawan
   )
   SELECT * FROM total_lembur;
   ```

#### D. Kueri Agregasi dengan GROUP BY & HAVING (1 Query)
1. **Menampilkan daftar karyawan yang memiliki total kehadiran kerja lebih dari 3 kali:**
   ```sql
   SELECT id_karyawan, COUNT(*) AS jumlah_hadir
   FROM presensi
   GROUP BY id_karyawan
   HAVING COUNT(*) > 3;
   ```

---

### 5.2 Views (Pemandangan Data)
Materi pemandangan virtual dari berkas [04_view.sql](file:///d:/Statistika/Tugas/Basdat/project/Payroll/04_view.sql) yang digunakan untuk menyederhanakan kueri join kompleks:

#### 1. `vw_karyawan_jabatan`
```sql
CREATE VIEW vw_karyawan_jabatan AS
    SELECT 
        k.id_karyawan,
        k.nama_karyawan,
        j.nama_jabatan,
        d.nama_departemen
    FROM
        karyawan k
            JOIN
        jabatan j ON k.id_jabatan = j.id_jabatan
            JOIN
        departemen d ON j.id_departemen = d.id_departemen;
```

#### 2. `vw_slip_gaji`
```sql
CREATE VIEW vw_slip_gaji AS
SELECT s.id_slip,
       k.nama_karyawan,
       s.gaji_bersih
FROM slip_gaji s
JOIN karyawan k
ON s.id_karyawan=k.id_karyawan;
```

---

### 5.3 Stored Procedures
Sintaks stored procedure untuk kalkulasi dari berkas [05_procedure.sql](file:///d:/Statistika/Tugas/Basdat/project/Payroll/05_procedure.sql):

#### `HitungGajiKotor`
```sql
DELIMITER $$

CREATE PROCEDURE HitungGajiKotor(
    IN p_id_karyawan VARCHAR(10)
)
BEGIN
    SELECT
        k.id_karyawan,
        k.nama_karyawan,
        j.gaji_pokok,
        SUM(t.nominal_tunjangan) AS total_tunjangan,
        j.gaji_pokok + SUM(t.nominal_tunjangan) AS gaji_kotor
    FROM karyawan k
    JOIN jabatan j
        ON k.id_jabatan = j.id_jabatan
    LEFT JOIN tunjangan t
        ON j.id_jabatan = t.id_jabatan
    WHERE k.id_karyawan = p_id_karyawan
    GROUP BY
        k.id_karyawan,
        k.nama_karyawan,
        j.gaji_pokok;
END$$

DELIMITER ;
```

---

### 5.4 Triggers
Sintaks trigger otomatisasi log dari berkas [06_trigger.sql](file:///d:/Statistika/Tugas/Basdat/project/Payroll/06_trigger.sql):

#### `trg_presensi`
```sql
-- Pembuatan tabel log
CREATE TABLE IF NOT EXISTS log_presensi (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_presensi VARCHAR(10),
    tanggal_log TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Pembuatan trigger
DELIMITER $$

CREATE TRIGGER trg_presensi
AFTER INSERT ON presensi
FOR EACH ROW
BEGIN
    INSERT INTO log_presensi(id_presensi)
    VALUES (NEW.id_presensi);
END$$

DELIMITER ;
```

---

### 5.5 User-Defined Functions
Sintaks fungsi matematika penggajian dari berkas [07_function.sql](file:///d:/Statistika/Tugas/Basdat/project/Payroll/07_function.sql):

#### `fn_total_lembur`
```sql
DELIMITER $$

CREATE FUNCTION fn_total_lembur(
    p_jam DECIMAL(5,2),
    p_tarif DECIMAL(12,2)
)
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
    RETURN p_jam * p_tarif;
END$$

DELIMITER ;
```

---

### 5.6 Skenario Uji Coba Integrasi (Testing Suite)
Skenario eksekusi pengujian fungsionalitas database secara berurutan:
1. **Uji Coba Presensi & Trigger Audit:**
   ```sql
   INSERT INTO presensi (id_presensi, id_karyawan, tanggal, jam_masuk, jam_keluar, status_hadir)
   VALUES ('PR99999', 'KR001', '2026-05-01', '08:00:00', '17:00:00', 'Hadir');
   
   SELECT * FROM log_presensi WHERE id_presensi = 'PR99999';
   ```
2. **Uji Coba Stored Procedure Gaji Kotor Karyawan:**
   ```sql
   CALL HitungGajiKotor('KR001');
   ```
3. **Uji Coba Function Perhitungan Total Lembur:**
   ```sql
   SELECT fn_total_lembur(5, 50000) AS hasil_kalkulasi;
   ```

---

## 🗂️ BAB VI: STRUKTUR REPOSITORI & PENUTUP

### 6.1 Struktur Repositori Terpadu (Repository Structure)
Sesuai dengan ketentuan perapian struktur satu direktori terpusat, seluruh berkas proyek diletakkan langsung pada path utama `Payroll/` tanpa adanya folder tambahan:

```
Payroll/
│
├── 📄 README.md                            ← Laporan utama proyek database (file ini)
│
├── 📄 01_ddl.sql                           ← Skema tabel, tipe data, PK, FK, dan batasan data
├── 📄 02_dml.sql                           ← Skrip pengisian data dummy sistem payroll
├── 📄 03_query.sql                         ← Berkas uji coba query (Select, Join, Subquery, CTE, Grouping)
├── 📄 04_view.sql                          ← Skrip pembuatan views untuk laporan ringkas
├── 📄 05_procedure.sql                     ← Skrip pembuatan stored procedure HitungGajiKotor
├── 📄 06_trigger.sql                       ← Skrip pembuatan trigger audit presensi dan tabel log_presensi
├── 📄 07_function.sql                      ← Skrip pembuatan fungsi skalar fn_total_lembur
│
├── 📄 db_payroll_dump.sql                  ← Berkas dump database gabungan (siap impor secara utuh)
│
├── 📄 ERD.jpg                              ← Diagram visual ERD Crow's Foot untuk db_payroll
└── 📄 LAPORAN PROJECT BASIS DATA.docx      ← Berkas dokumen Microsoft Word laporan akademik lengkap
```

---

### 6.2 Kesimpulan
Berdasarkan hasil perancangan, implementasi, dan pengujian yang telah dilakukan, dapat disimpulkan bahwa kebutuhan Sistem Penggajian (Payroll) berhasil dianalisis melalui identifikasi pengguna, kebutuhan fungsional, serta aturan bisnis yang menjadi dasar dalam pengembangan sistem. Hasil analisis tersebut menjadi acuan dalam merancang database yang sesuai dengan kebutuhan proses pengelolaan penggajian.

Perancangan basis data berhasil dilakukan menggunakan Entity Relationship Diagram (ERD) yang kemudian dipetakan ke dalam skema relasional. Struktur database terdiri dari tabel-tabel yang saling berelasi melalui primary key dan foreign key, sehingga mampu menggambarkan hubungan antar entitas dalam sistem payroll secara terstruktur.

Proses normalisasi juga berhasil diterapkan hingga Third Normal Form (3NF) sehingga struktur basis data menjadi lebih efisien, mengurangi redundansi data, serta menjaga konsistensi dan integritas informasi yang tersimpan di dalam database.

Selanjutnya, implementasi database menggunakan MySQL berhasil dilakukan melalui pembuatan database, tabel, relasi, constraint, serta pengisian data dummy yang merepresentasikan kondisi nyata. Seluruh data berhasil tersimpan dengan baik dan dapat digunakan sebagai data uji pada sistem payroll.

Selain itu, berbagai objek basis data seperti query SQL, view, stored procedure, trigger, dan function berhasil diimplementasikan sesuai dengan kebutuhan sistem. Berdasarkan hasil pengujian, seluruh fitur dapat dijalankan dengan baik dan menghasilkan output sesuai dengan fungsi yang dirancang. Dengan demikian, database Sistem Penggajian (Payroll) yang dibangun telah mampu mendukung proses pengelolaan data penggajian secara terstruktur, terintegrasi, efektif, dan efisien.

### 6.3 Saran
Berdasarkan hasil perancangan dan implementasi database Sistem Penggajian (Payroll), sistem yang telah dibangun diharapkan dapat terus dikembangkan agar mampu memenuhi kebutuhan pengelolaan penggajian yang semakin kompleks. Pengembangan dapat dilakukan dengan menambahkan fitur-fitur pendukung, seperti pengelolaan cuti, absensi secara real-time, perhitungan pajak dan BPJS secara otomatis, serta pencatatan bonus dan insentif sehingga sistem dapat memberikan informasi yang lebih lengkap dan akurat.

Selain itu, database yang telah dirancang dapat diintegrasikan dengan aplikasi berbasis web maupun desktop agar proses pengelolaan data menjadi lebih mudah, cepat, dan efisien. Pengembangan juga perlu memperhatikan aspek keamanan data melalui pengaturan hak akses pengguna, mekanisme pencadangan (backup) data secara berkala, serta pemeliharaan database secara rutin. Dengan adanya pengembangan tersebut, sistem payroll diharapkan mampu memberikan kinerja yang lebih optimal, mendukung proses administrasi penggajian secara efektif, serta memenuhi kebutuhan organisasi di masa yang akan datang.
