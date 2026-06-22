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
CALL HitungGajiKotor('KR001');