-- Menggunakan SELECT statement untuk 1 nilai literal
 select 77 as literalInteger; -- Literal untuk bilangan bulat
 select 'mataram' as kota; -- literal untuk char
 select '2023/05/20' as date; -- literal untuk date
 select 77 < 3 as booleanLiteral; -- literal boolean
 
 -- menggunakan SELECT statement untuk 2 atau lebih literal
 select 77 as angka, true as nilai_logika, 'UNDIKMA' as teks;
 
 -- menggunakan SELECT untuk NULL
 select NULL as kosong;
 
 -- menggunakan SELECT statement untuk operator matematika
 select 5%2 as sisa_bagi, 5/2 as hasil_bagi, 5 DIV 2 as hasil_bagi_int;
 
 -- Latihan Mandiri
 select 4*2 as jawab_1, (4*8)%7 as jawab_2, (4*8) mod 7 as jawab_3;
 
 -- operator Matematika untuk menghasilkan total beli (qty * harga) pada tabel tr_penjualan
 use dqlabmartbasic;
 select qty*harga as total_beli, nama_produk from tr_penjualan_dqlab;
 select nama_produk, qty, harha, qty*harga as total_beli from tr_penjualan_dqlab;
 
 -- operator perbandingan
 select 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

 -- Latihan Mandiri
 select 1=true, 1=false, 5>=5, 5.3=5.20000, NULL=1, NULL=NULL;
 
 -- penjualan yang produk dan kuantitinya di atas 3
 select nama_produk, qty, qty >= 3 from tr_penjualan_dqlab;
 
-- penggunaan fungsi dengan nilai literal
select pow (3,2), round (3.14), round (3.54), round (3.155), round (3.155,2), floor (4.28), floor (4.78), celling (3.39), celling (4.55);
 
 -- fungsi now(), year(), datediff(), dan day()
 select now(), year('2022-05-20'), datediff('2022-05-20', '2022-05-01'), day(now());
 
 -- penggunaan fungsi tanggal pada kolom dan tabel
 -- fungsi pada tabel tr_penjualan
 -- mendapatkan latest buy  dari produk
 select nama_produk, datediff(now(), tgl_transaksi) as latest_buy, year(tgl_transaksi)
 from tr_penjualan_dqlab;
 
 -- klausal WHWRE untuk filtering atau penyaringan
 -- ambil nama produk, dan qty dari tabel tr_penjualan_dqlab yang qty lebih dari 2
 select nama_produk, qty
 from tr_penjualan_dqlab
 where qty > 2;
 
 select tgl_transaksi, nama_produk, qty, harga, qty*harga as total_beli
 from tr_penjualan_dqlab
 where kode_pelanggan = 'dqlabcust07' AND qty > 1;
 
 -- Penggunaan LIKE pada statement SELECT
 -- cari semua nama produk yang namanya diawali dengan huruf 'f'
 select nama_produk from tr_penjualan_dqlab
 where nama_produk like 'f%';
 
 
 
 