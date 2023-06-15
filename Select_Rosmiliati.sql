-- menggunakan database dqlabmartbasic
use dqlabmartbasic;

-- cek tabel yang tersedia
show tables;

-- cek deskripsi tiap tabel
desc ms_pelanggan_dqlab;
desc ms_produk_dqlab;
desc tr_penjualan_dqlab;

-- Select 1 kolom dari table ms_produk_dqlab
select nama_produk from ms_produk_dqlab;

-- Select 1 kolom dari table ms_pelanggan dan tr_penjualan
Select nama_pelanggan from ms_pelanggan_dqlab; -- mengambil kolom nama pelanggan
select tgl_transaksi from tr_pelanggan_dqlab; -- mengambil kolom nama transaksi

-- select 2 atau lebih kolom dari table ms_produk_dqlab
select nama_produk, harga from ms_produk_dqlab;

-- mengambil kolom kode_pelanggan, tgl transaksi dan total harga dari table tr_penjualan
select kode_pelanggan, tgl_transaksi, harga from tr_penjualan_dqlab;

-- mengambil seluruh kolom pada table
-- Ambil seluruh kolom pada table ms_pelanggan_dqlab
select * from ms_pelanggan_dqlab;


-- Prefik dan alias
-- Prefik nama table
select ms_produk_dqlab.nama_produk
from ms_produk_dqlab;

select ms_produk_dqlab.nama_produk, ms_produk_dqlab.harga
from ms_produk_dqlab;

-- Alias dari nama kolom
select nama_produk as np from ms_produk_dqlab;

select nama_produk as np, harga as price from ms_produk_dqlab;
select nama_produk np from ms_produk_dqlab;

-- Alias dari nama table
select nama_produk from ms_produk_dqlab as msp;
-- Alias bertemu dengan prefik (bikin alias tabel dulu baru baru prefik)
select msp.nama_produk from ms_produk_dqlab as msp;

-- case 1
select nama_pelanggan, alamat from ms_pelanggan_dqlab;

-- case 2
select nama_produk, harga from ms_produk_dqlab;

