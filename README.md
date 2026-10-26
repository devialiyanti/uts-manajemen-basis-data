\# UTS Manajemen Basis Data



\## Identitas Mahasiswa

\- Nama: Devi Aliyanti

\- NIM: 1247050029

\- Mata Kuliah: Manajemen Basis Data



\## Deskripsi Proyek

Proyek ini dibuat untuk memenuhi tugas UTS Manajemen Basis Data dengan menggunakan Docker, PostgreSQL, dan pgAdmin.



Proyek ini mencakup pembuatan container database PostgreSQL, pengelolaan database melalui pgAdmin dan DBeaver, pembuatan schema dan tabel, serta pengaturan hak akses pengguna database.



\## Teknologi yang Digunakan

\- Docker

\- Docker Compose

\- PostgreSQL 15

\- pgAdmin 4

\- DBeaver

\- SQL



\## Struktur Folder

```text

UTS MDB Devi Aliyanti/

├── docker-compose.yml

├── .env

├── .env.example

├── .gitignore

├── README.md

└── sql/

&#x20;   ├── 01\_schema\_tabel.sql

&#x20;   └── 02\_role\_hak\_akses.sql

```



\## Konfigurasi Database

\- Database: kelas\_a

\- Container PostgreSQL: postgres\_depi

\- Port PostgreSQL: 22029

\- Container pgAdmin: pgadmin\_depi

\- Port pgAdmin: 44029



Konfigurasi rahasia disimpan dalam file `.env` lokal dan tidak disertakan dalam repository GitHub.



\## Schema dan Tabel

Schema yang digunakan adalah `SALAM` dengan tabel `mahasiswas`.



Tabel tersebut memiliki beberapa constraint:

\- PRIMARY KEY pada kolom NIM.

\- UNIQUE pada kolom email.

\- NOT NULL pada kolom yang wajib diisi.

\- CHECK untuk membatasi semester antara 1–14.

\- CHECK untuk membatasi IPK antara 0–4.



\## Hak Akses Pengguna

Terdapat tiga role database:

\- `backend\_dev`: hak akses CRUD (SELECT, INSERT, UPDATE, DELETE).

\- `bi\_dev`: hak akses membaca data menggunakan SELECT.

\- `data\_engineer`: hak akses CRUD serta membuat objek pada schema sesuai hak kepemilikannya.



\## Cara Menjalankan Proyek

1\. Pastikan Docker Desktop sudah berjalan.

2\. Siapkan file `.env` berdasarkan contoh dalam `.env.example`.

3\. Jalankan terminal pada folder proyek.

4\. Jalankan perintah:



&#x20;  ```bash

&#x20;  docker compose up -d

&#x20;  ```



5\. Akses pgAdmin melalui:



&#x20;  ```text

&#x20;  http://localhost:44029

&#x20;  ```



6\. Hubungkan pgAdmin ke PostgreSQL menggunakan hostname container `postgres\_depi` dan port `5432` jika keduanya berada pada jaringan Docker yang sama.

7\. Gunakan DBeaver untuk menghubungkan PostgreSQL melalui `localhost` dengan port `22029`.



\## Menjalankan Script SQL

Jalankan script berikut secara berurutan menggunakan akun admin PostgreSQL pada database `kelas\_a`:



1\. `sql/01\_schema\_tabel.sql`

2\. `sql/02\_role\_hak\_akses.sql`



Pastikan role belum dibuat sebelumnya agar tidak terjadi error duplikasi role.



\## Keamanan

\- File `.env` tidak boleh diunggah ke repository publik.

\- File `.env.example` digunakan sebagai contoh konfigurasi tanpa membagikan kata sandi asli.

\- Kata sandi pada script SQL dapat diganti sesuai kebutuhan.



\## Penutup

Proyek ini menjadi penerapan penggunaan Docker dan PostgreSQL untuk pengelolaan database, pembuatan tabel dengan constraint, serta pengaturan hak akses pengguna.



