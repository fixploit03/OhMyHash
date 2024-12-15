#!/bin/bash
# [instal.sh]
# Skrip untuk menginstal OhMyHash secara otomatis

# File
file="src/OhMyHash.sh"

if [[ ! -f "${file}" ]]; then
	echo "[-] File '${file}' tidak ditemukan."
	exit 1
fi

chmod +x "${file}"

file_ex="src/ohmyhash"
cp "${file}" "${file_ex}"

# Sistem operasi
so=$(uname -o)

if [[ "${so}" == "Android" ]]; then
	path="/data/data/com.termux/files/usr/bin"
	echo "[*] Menginstal OhMyHash..."
	sleep 3
	mv "${file_ex}" "${path}"
	echo "[+] OhMyHash berhasil diinstal."
	sleep 1
	echo "[+] Ketikkan 'ohmyhash --bantuan' untuk menjalankannya."
elif [[ "${so}" == "GNU/Linux" ]]; then

	if [[ "$EUID" -ne 0 ]]; then
		echo "[-] Skrip ini harus dijalankan sebagai root!"
		exit 1
	fi

	path="/usr/bin"
	echo "[*] Menginstal OhMyHash..."
	sleep 3
	mv "${file_ex}" "${path}"
	echo "[+] OhMyHash berhasil diinstal."
	sleep 1
	echo "[+] Ketikkan 'ohmyhash --bantuan' untuk menjalankannya."
fi
