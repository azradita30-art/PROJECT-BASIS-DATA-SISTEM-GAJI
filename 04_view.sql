-- View Data Karyawan
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
        
-- View Slip Gaji
CREATE VIEW vw_slip_gaji AS
SELECT s.id_slip,
       k.nama_karyawan,
       s.gaji_bersih
FROM slip_gaji s
JOIN karyawan k
ON s.id_karyawan=k.id_karyawan;