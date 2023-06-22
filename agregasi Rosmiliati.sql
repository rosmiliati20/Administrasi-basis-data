-- ORDER BY, GROUP BY, ASC DESC, HAVING

-- menggunakan database dqlabpraktek2
use dqlabpraktek2;

-- menggunakan ORDER BY untuk mengurut data 
-- ambil nama kolom nama_produk, qyt pada tabel penjualan, dan diurutkan berdasarkan kolom qty
select nama_produk, qty
from tr_penjualan_dqlab
order by qty;

-- ambil nama kolom nama_produk, qty pada tabel penjualan dan urutkan berdasarkan qty dan nama_produk
select nama_produk, qty
from tr_penjualan_dqlab
order by qty, nama_produk;

-- latihan1
-- ambil semua kolom dari tabel tr_penjualan_dqlab dengan mengurutkan 
select*from tr_penjualan_dqlab order by qty,tgl_transaksi;

-- ambil semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan
select*from ms_pelanggan_dqlab order by  nama_pelanggan;

-- ambil semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan alamat
select*from ms_pelanggan_dqlab order by alamat;

-- ORDER BY dengan ASC dan desc
-- ambil nama_produk, qty dari tabel penjualan urutakan dengan DESC qty
select nama_produk, qty 
from tr_penjualan_dqlab 
order by qty desc;

-- ambil nama_produk, qty dari tabel pen
select nama_produk, qty 
from tr_penjualan_dqlab 
order by qty desc, nama_produk ASC;

-- ambil semua kolom tabel tr_penjualan dengan mengurutkan tgl_transaksi secara desc dan qty secara asc
select*from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;

-- ambil semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan secara desc
select*from ms_pelanggan_dqlab order by nama_pelanggan desc;

-- ambil semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan alamat secara desc
select*from ms_pelanggan_dqlab order by alamat desc;

-- ORDER BY dari hasil perhitungan
-- ambil nama_produk, qty, harga, total_beli urutkan berdasarkan total beli
select nama_produk, qty, harga, qty*harga as total_beli
from tr_penjualan_dqlab
order by total_beli desc;



-- latihan mandiri
-- urutkan dengan ekspresi total harga menggunakan rumusan jumlah diskon dikali harga barang dikurangi diskon
select 250000 - (250000*(10/100));

-- ORDER BY dengan WHERE
-- ambil nama_produk , qty  dari tabel penjualan dengan nama_produk berawalan F, urutkan berdasarkan qty terbanyak
select nama_produk, qty 
from tr_penjualan_dqlab
where nama_produk like 'F%'
order by qty desc;

select diskon_persen from tr_penjualan_dqlab
where diskon_persen > 0;

-- taampilkan semua kolom dari tr_penjualan yang memiliki diskon dan urutkan bersarkan harga tertinggi
select*from tr_penjualan_dqlab order by harga desc, diskon_persen > 0;
-- tampilkan semua kolom nama_produk, kualitas penjualan dan harga dari tr_penjualan yang memiliki harga minimal seratus ribu rupiah dan diurutkanberdasarkan harga tertinggi
select nama_produk, qty, harga from tr_penjualan_dqlab where harga >= 100000 order by harga desc;
-- tampilkan kolom nama_produk, qty pembelian dan harga dari tr_penjualan yang memiliki harga minimal seratus ribu rupiah atau nama produk berawalan karakter T dan diurutan berdasarkan diskon tertringgi
select nama_produk, qty, harga from tr_penjualan_dqlab where harga >= 100000 or nama_produk like 'T%'order by harga desc;

-- fungsi agregasi
-- ambil hasil; perhitungan nilai qty dari seluruh row pada tabel transaksi
select sum(qty) from tr_penjualan_dqlab;

-- menghitung jumlah seluruh row pada tabel transaksi
select count(*) from tr_penjualan_dqlab;
select count(*) from ms_pelanggan_dqlab;
select count(*) from ms_produk_dqlab;

-- menghitung penjumlahan qty dan menghitung seluruh row
select sum(qty), count(*)
from tr_penjualan_dqlab;

-- menghitung rata2 qty, nilai tertinggi dan nilai terendah
select avg(qty), min(qty), max(qty)
from tr_penjualan_dqlab;

-- menghitung nilai unik dari nama_produk di tabel tr_penjualan_dqlab
select count(distinct nama_produk)
from tr_penjualan_dqlab;
select count(distinct nama_produk), count(nama_produk)
from tr_penjualan_dqlab;

-- menarik field nama_produk dan fungsi agregasi untuk nilai qty pada tabel tr_penjualan_dqlab
select nama_produk, max(qty)
from tr_penjualan_dqlab;

-- Group BY
-- mengambil gruping nilai dari kolom nama_produk
select nama_produk from tr_penjualan_dqlab
group by nama_produk;

-- ambil grouping nilai dalam kolom nama_produk dan qty
select nama_produk, qty
from tr_penjualan_dqlab
group by nama_produk, qty;

-- ambil jumlah qty dari grouping nama_produk terhadap seluruh row pada tabel tr_penjualan_dqlab
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk;

-- ambil jumlah qty dari hasil grouping nama produk terhadap seluruh row tabel penjualan urutklan qty terbesar
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
order by sum(qty) desc;

-- HAVING
-- ambil jumlah qty > 2 dari hasil grouping nama produk terhadap seluruh row pada tabel penjualan
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) > 2
order by sum(qty) desc;

-- lihat daftar nama produk yang total julah produk terjual perkelopok nama produk adalah > 4
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) > 4
order by sum(qty) desc;
 

-- lihat nama produk dan total jumlah produk yang terjual di grouping nama produk pada tabel penjualan
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) = 9
order by sum(qty) desc;
 

-- lihatr daftar grouping nama produk dan total nilai penjualan dikali jumlah diskon dan urutkan berdasarkan nilai tabel penjualan
select nama_produk, sum(qty*harga)
from tr_penjualan_dqlab
group by nama_produk
order by sum(qty) desc;



