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

# Sistem operasi
so=$(uname -o)

if [[ "${so}" == "Android" ]]; then
	path="/data/data/com.termux/files/bin"
	echo "[*] Menginstal OhMyHash..."
	sleep 3
	cp "${file}" "${path}/ohmyhash"
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
	cp "${file}" "${path}/ohmyhash"
	echo "[+] OhMyHash berhasil diinstal."
	sleep 1
	echo "[+] Ketikkan 'ohmyhash --bantuan' untuk menjalankannya."
fi
