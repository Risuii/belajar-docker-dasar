bridge = tipe network yang koneksi networknya sama sehingga dua container yang berbeda dapat berkomunikasi asalkan networknya sama
host = yaitu driver yang digunakan untuk membuat network yang sama dengan sistem host. host hanya jalan di docker linux, tidak bisa digunakan di mac atau windows
none = yaitu driver untuk membuat network yang tidak bisa berkomunikasi

driver default itu bridge

docker network ls

docker network create --driver bridge contoh-network

docker network rm contoh-network