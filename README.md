## OhMyHash

`OhMyHash` adalah program Bash sederhana yang dirancang untuk menghitung nilai [Hash](https://id.m.wikipedia.org/wiki/Hash) dari sebuah file menggunakan beberapa algoritma hashing, seperti [MD5](https://id.m.wikipedia.org/wiki/MD5), [SHA-1](https://en.m.wikipedia.org/wiki/SHA-1), [SHA-256](https://id.m.wikipedia.org/wiki/SHA-2), dan [SHA-512](https://id.m.wikipedia.org/wiki/SHA-2). 

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

Penggunaan: ohmyhash [-f FILE|--file FILE] [ -s FILE|--simpan FILE] [OPSI]

Opsi:
	-f [FILE] atau --file [FILE]        : Menentukan nama file yang ingin dihitung nilai hash-nya.
	-s [FILE] atau --simpan [FILE]      : Menentukan nama file tempat menyimpan hasil nilai hash.
	-v atau --versi	                    : Menampilkan versi program OhMyHash
	-b atau	--bantuan	            : Menampilkan menu bantuan

Contoh:
	- Penggunaan dasar: ohmyhash -f [FILE] atau ohmyhash --file [FILE]
	- Menyimpan hasilnya kedalam file: ohmyhash -f [FILE] -s [FILE] atau ohmyhash --file [FILE] --simpan [FILE]
```

4. **Menampilkan Versi**


```
ohmyhash -v

atau

ohmyhash --versi
```

## Lisensi 

Program ini dilisensikan di bawah [Lisensi MIT]()

## Dukungan 

Jika Anda menyukai program ini atau merasa bahwa program ini bermanfaat, Anda dapat mendukung proyek ini dengan cara berikut:

- Beri bintang pada repositori ini di GitHub untuk membantu orang lain menemukannya.
- Beri umpan balik dengan membuka [issue]() atau memberikan saran perbaikan.

Terima kasih telah menggunakan **OhMyHash**! Semoga bermanfaat **^_^**.
