docker container ls -a #untuk ngecek container apa saja yang terdapat di dalam docker

docker container ls #untuk ngecek container yang sedang berjalan didocker

docker container create --name <namaProject> <namaImage : tags>  #untuk membuat container dalam docker

docker container start <containerID/namaContainer> #untuk menjalankan container dengan menambahkan nama atau id dari container yang ingin dijalankan

docker container stop <containerID/namaContainer> #untuk menghentinkan container yang di inginkan

docker container rm <containerID/namaContainer> #untuk menghapus container yang di inginkan 

docker container logs <containerID/namaContainer> #untuk melihat log dari container yang dijalankan

docker container logs -f <containerID/namaContainer> #untuk melihat log dari container yang dijalankan secara realtime

