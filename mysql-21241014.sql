-- menggunakan database
use dqlabmartbasic;

-- menggunakan data menggunakan ORDER BY
-- ambil nama_produk, dan quantity dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty
SELECT nama_produk, qty
from tr_penjualan_dqlab
order by qty;

SELECT nama_produk, qty
from tr_penjualan_dqlab
order by nama_produk;

-- menggurutkan lebih dari 1 kolom menggunakan ORDER BY
-- ambil nama_produk, dan quantity dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty dan nama_produk
select nama_produk, qty
from tr_penjualan_dqlab
order by qty, nama_produk;

-- tampilkan semua kolom dari table tr_penjualan_dqlab dengan mengurutkan berdasarkan qty dan tgl-transaksi
select * from tr_penjualan_dqlab order by qty, tgl_transaksi;

-- tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan
select * from ms_pelanggan order by nama_pelanggan;

-- tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat
select * from ms_pelanggan order by alamat;

-- ASC dan DESC mengurutkan dari besar ke kecil
-- ambil nama_produk dan quantity dari tabel tr_penjualan_dqlab urutkan berdasarkan qty secara desceding
select nama_produk, qty
from tr_penjualan_dqlab
order by qty desc;

-- mengurutkan 2 kolom dengan ascanding dan descending
select nama_produk, qty
from tr_penjualan_dqlab
order by qty desc, nama_produk asc;

-- latihan dengan mencoba berbagai pengurutan dengan ORDER BY dengan kriteria berikut
-- ambil semua kolom dari table tr_penjualan_dqlab dengan mengurutkan berdasarkan tgl_transaksi secara descending dan qty secara ascending
select * from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;

-- ambil semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan secara descending
select * from ms_pelanggan order by nama_pelanggan desc;

-- ambil semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat secara descending
select * from ms_pelanggan order by alamat desc;

-- ambil nama_produk, qty, harga dan total beli, dari tr_penjualan_dqlab urutkan berdasarkan total beli
select nama_produk, qty, harga, qty*harga as total_beli
from tr_penjualan_dqlab
order by total_beli desc;

-- cobalah pengurutan dengan ekspresi total harga dengan menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon
select *, (jumlah_barang * harga_barang - diskon) as total_harga from tr_penjualan_dqlab
order by total_harga desc;







