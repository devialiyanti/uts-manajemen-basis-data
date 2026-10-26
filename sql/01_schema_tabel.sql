CREATE SCHEMA IF NOT EXISTS "SALAM";

CREATE TABLE IF NOT EXISTS "SALAM".mahasiswas (
    nim VARCHAR(10) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    semester INTEGER NOT NULL CHECK (semester BETWEEN 1 AND 14),
    ipk NUMERIC(3,2) CHECK (ipk BETWEEN 0.00 AND 4.00)
);

INSERT INTO "SALAM".mahasiswas
    (nim, nama, email, semester, ipk)
VALUES
    ('1247050029', 'Devi Aliyanti', 'devi@example.com', 5, 3.92),
    ('1247050030', 'Mahasiswa Uji', 'uji@example.com', 5, 3.50)
ON CONFLICT (nim) DO NOTHING;

SELECT * FROM "SALAM".mahasiswas;
