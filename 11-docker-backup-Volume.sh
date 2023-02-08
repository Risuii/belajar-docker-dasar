TAHAPAN BACKUP VOLUME

1. matikan container yang menggunakan volume yang ingin kita BACKUP
2. buat container baru dengan dua mount, pertama volume yang ingin kita backup, kedua bind mount folder dari sistem mount
3. lakukan backup menggunakan container dengan cara meng-archive isi volume, dan simpan di bind mount folder
4. isi file backup sekarang ada di folder sistem host
5. delete container yang kita gunakan untuk melakukan backup


/Users/risui/Documents/Docker/Belajar/backup

docker container create --name ngingx-backup --mount "type=bind,source=/Users/risui/Documents/Docker/Belajar/backup,destination=/backup" --mount "type=volume,source=mongo-volume,destination=/data" nginx:latest

docker container exec -i -t ngingx-backup /bin/bash

tar cvf /backup/backup.tar.gz /data

sekali jalan aja yang dibawah ini untuk backup tapi harus cari image yang sekali jalan bkn kaya nginx yang selalu nyala
harus berhenti dlu sebelum backup containernya

docker container run --rm --name ubuntu-backup --mount "type=bind,source=/Users/risui/Documents/Docker/Belajar/backup,destination=/backup" --mount "type=volume,source=mongo-volume,destination=/data" ubuntu:latest tar cvf /backup/backup.tar.gz /data