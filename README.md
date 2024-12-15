## Instalasi 

```
git clone https://github.com/fixploit03/OhMyHash.git
cd OhMyHash
chmod +x instal.sh
./instal.sh
```

## Cara menggunakan 

1. **Menghitung nilai Hash file saja**

```
ohmyhash -f [FILE]

atau

ohmyhash --file [FILE]
```

2. **Menghitung dan menyimpan nilai Hash file**

```
ohmyhash -f [FILE] -s [FILE]

atau

ohmyhash --file [FILE] --simpan [FILE]
```

3. **Menampilkan menu bantuan**

```
ohmyhash -b

atau

ohmyhash --bantuan
```

**Keluaran**

```
OhMyHash 1.0.0 - https://github.com/fixploit03/OhMyHash/
Copyright (c) 2024 - Rofi (fixploit03)

Penggunaan: /data/data/com.termux/files/usr/bin/ohmyhash [-f FILE|--file FILE] [ -s FILE|--simpan FILE] [OPSI]

Opsi:
        -f [FILE] atau --file [FILE]        : Nama file yang ingin dihitung nilai Hashnya
        -s [FILE] atau --simpan [FILE]      : Nama file yang digunakan untuk menyimpan nilai Hashnya
        -v atau --versi                     : Menampilkan versi OhMyHash
        -b atau --bantuan                   : Menampilkan menu bantuan

Contoh:
        - Penggunaan dasar: /data/data/com.termux/files/usr/bin/ohmyhash -f [FILE] atau /data/data/com.termux/files/usr/bin/ohmyhash --file [FILE]
        - Menyimpan hasilnya kedalam file: /data/data/com.termux/files/usr/bin/ohmyhash -f [FILE] -s [FILE] atau /data/data/com.termux/files/usr/bin/ohmyhash --file [FILE] --simpan [FILE]
```

4. **Menampilkan Versi**


```
ohmyhash -v

atau

ohmyhash --versi
```
