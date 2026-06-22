-- Membuat tabel log
CREATE TABLE IF NOT EXISTS log_presensi (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_presensi VARCHAR(10),
    tanggal_log TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Membuat trigger
DELIMITER $$

CREATE TRIGGER trg_presensi
AFTER INSERT ON presensi
FOR EACH ROW
BEGIN
    INSERT INTO log_presensi(id_presensi)
    VALUES (NEW.id_presensi);
END$$

DELIMITER ;

-- Data uji untuk memicu trigger
INSERT INTO presensi
(id_presensi, id_karyawan, tanggal, jam_masuk, jam_keluar, status_hadir)
VALUES
('PR99999', 'KR001', '2026-05-01', '08:00:00', '17:00:00', 'Hadir');

-- Melihat hasil trigger
SELECT * FROM log_presensi;