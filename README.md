
<div align="center">

# 📚 UTS Manajemen Basis Data

### Implementasi Database Menggunakan Docker dan PostgreSQL

**Devi Aliyanti · 1247050029**

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![pgAdmin](https://img.shields.io/badge/pgAdmin-4-3D70AE?style=for-the-badge)

</div>

---

## 📌 Deskripsi Proyek

Repository ini berisi proyek Ujian Tengah Semester (UTS) mata kuliah **Manajemen Basis Data**. Proyek ini menerapkan penggunaan Docker untuk menjalankan PostgreSQL dan pgAdmin, pengelolaan database melalui DBeaver, pembuatan schema dan tabel, serta pengaturan hak akses pengguna.

## 👤 Identitas Mahasiswa

| Informasi | Keterangan |
|:---|:---|
| Nama | Devi Aliyanti |
| NIM | 1247050029 |
| Mata Kuliah | Manajemen Basis Data |

## 🛠️ Teknologi

| Teknologi | Fungsi |
|:---|:---|
| Docker | Menjalankan layanan dalam container |
| Docker Compose | Mengatur layanan PostgreSQL dan pgAdmin |
| PostgreSQL 15 | Sistem manajemen basis data |
| pgAdmin 4 | Mengelola PostgreSQL melalui antarmuka web |
| DBeaver | Mengakses dan menjalankan query SQL |

## 📂 Struktur Repository

```text
UTS MDB Devi Aliyanti/
├── docker-compose.yml
├── .env.example
├── .gitignore
├── README.md
└── sql/
    ├── 01_schema_tabel.sql
    └── 02_role_hak_akses.sql
```

## 🗄️ Konfigurasi Database

| Komponen | Konfigurasi |
|:---|:---|
| Database | `kelas_a` |
| Container PostgreSQL | `postgres_depi` |
| Port PostgreSQL | `22029` |
| Container pgAdmin | `pgadmin_depi` |
| Port pgAdmin | `44029` |
| Schema | `SALAM` |
| Tabel | `mahasiswas` |

## 📋 Implementasi Database

### 1. Pembuatan Schema dan Tabel

Schema `SALAM` digunakan untuk menyimpan tabel `mahasiswas` dengan constraint berikut:

- `PRIMARY KEY` untuk menjamin keunikan NIM.
- `UNIQUE` untuk mencegah email duplikat.
- `NOT NULL` untuk kolom yang wajib diisi.
- `CHECK` untuk membatasi semester antara 1–14.
- `CHECK` untuk membatasi IPK antara 0–4.

### 2. Pengaturan Hak Akses

| Role | Hak Akses |
|:---|:---|
| `backend_dev` | SELECT, INSERT, UPDATE, DELETE |
| `bi_dev` | SELECT |
| `data_engineer` | CRUD dan pembuatan objek sesuai hak akses serta kepemilikan |

## 🚀 Cara Menjalankan Proyek

### Prasyarat

- Docker Desktop sudah terinstal dan berjalan.
- File konfigurasi `.env` sudah disiapkan secara lokal.

### Menjalankan Container

Jalankan perintah berikut dari terminal pada folder proyek:

```bash
docker compose up -d
```

Periksa status container:

```bash
docker compose ps
```

### Mengakses Layanan

**pgAdmin**

Buka alamat berikut di browser:

[http://localhost:44029](http://localhost:44029)

Untuk koneksi PostgreSQL dari pgAdmin dalam jaringan Docker yang sama, gunakan hostname `postgres_depi` dan port `5432`.

**DBeaver**

Gunakan konfigurasi koneksi berikut:

- Host: `localhost`
- Port: `22029`
- Database: `kelas_a`
- Username: sesuai konfigurasi PostgreSQL

## ▶️ Menjalankan Script SQL

Jalankan script pada database `kelas_a` menggunakan akun admin PostgreSQL secara berurutan:

1. `sql/01_schema_tabel.sql`
2. `sql/02_role_hak_akses.sql`

> **Catatan:** Jika role sudah pernah dibuat sebelumnya, sesuaikan script agar tidak terjadi error akibat duplikasi role.

## 🔐 Keamanan

- File `.env` berisi konfigurasi rahasia dan tidak boleh diunggah ke repository.
- File `.env.example` disediakan sebagai contoh konfigurasi.
- Jangan menyimpan kata sandi asli atau informasi rahasia di repository publik.

## 📎 File Proyek

- [`docker-compose.yml`](docker-compose.yml) — konfigurasi layanan Docker.
- [`.env.example`](.env.example) — contoh variabel lingkungan.
- [`01_schema_tabel.sql`](sql/01_schema_tabel.sql) — pembuatan schema, tabel, dan data.
- [`02_role_hak_akses.sql`](sql/02_role_hak_akses.sql) — konfigurasi role dan hak akses.

---

<div align="center">

**UTS Manajemen Basis Data**

Dibuat oleh **Devi Aliyanti**

</div>
