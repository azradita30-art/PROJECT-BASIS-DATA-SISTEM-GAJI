USE db_payroll;

-- 3 QUERY SEDERHANA
SELECT * FROM karyawan;

SELECT * FROM jabatan
WHERE gaji_pokok > 5000000;

SELECT * FROM presensi
WHERE status_hadir='Terlambat';

-- 4 QUARY JOIN
-- QUARY JOIN 1
SELECT k.nama_karyawan,
       j.nama_jabatan,
       d.nama_departemen
FROM karyawan k
JOIN jabatan j
ON k.id_jabatan=j.id_jabatan
JOIN departemen d
ON j.id_departemen=d.id_departemen;

-- QUARY JOIN 2
SELECT
    s.id_slip,
    k.nama_karyawan,
    p.tanggal_mulai,
    p.tanggal_selesai,
    s.gaji_bersih
FROM slip_gaji s
JOIN karyawan k
    ON s.id_karyawan = k.id_karyawan
JOIN periode_gaji p
    ON s.id_periode = p.id_periode;

-- QUARY JOIN 3
SELECT
    k.nama_karyawan,
    l.tanggal_lembur,
    l.jumlah_jam,
    l.status_persetujuan
FROM karyawan k
JOIN lembur l
    ON k.id_karyawan = l.id_karyawan;

-- QUARY JOIN 4
SELECT
    k.id_karyawan,
    k.nama_karyawan,
    COUNT(*) AS jumlah_terlambat
FROM karyawan k
JOIN presensi p
    ON k.id_karyawan = p.id_karyawan
WHERE p.status_hadir = 'Terlambat'
GROUP BY k.id_karyawan, k.nama_karyawan;

-- 2 Query Subquery / CTE
-- pertama
SELECT *
FROM karyawan
WHERE id_jabatan IN (
    SELECT id_jabatan
    FROM jabatan
    WHERE gaji_pokok > 8000000
);
-- kedua
WITH total_lembur AS (
   SELECT id_karyawan,
          SUM(jumlah_jam) total_jam
   FROM lembur
   GROUP BY id_karyawan
)
SELECT * FROM total_lembur;

-- 1 Query Agregat + GROUP BY + HAVING
SELECT id_karyawan,
       COUNT(*) jumlah_hadir
FROM presensi
GROUP BY id_karyawan
HAVING COUNT(*) > 3;

SELECT * FROM lembur;