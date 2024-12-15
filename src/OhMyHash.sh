#!/bin/bash
# [OhMyHash.sh]
# Hitung Nilai Hash Sebuah File

program="OhMyHash"
pembuat="Rofi (fixploit03)"
versi="1.0.0"
github="https://github.com/fixploit03/OhMyHash/"


function copyright(){
	echo "${program} ${versi} - ${github}"
	echo "Copyright (c) 2024 - ${pembuat}"
	echo ""
}

function menu_bantuan(){
	copyright
	echo "Penggunaan: ${0} [-f FILE|--file FILE] [ -s FILE|--simpan FILE] [OPSI]"
	echo ""
	echo "Opsi:"
	echo "	-f [FILE] atau --file [FILE]        : Nama file yang ingin dihitung nilai Hashnya"
	echo "	-s [FILE] atau --simpan [FILE]      : Nama file yang digunakan untuk menyimpan nilai Hashnya"
	echo "	-v atau --versi	                    : Menampilkan versi OhMyHash"
	echo "	-b atau	--bantuan	            : Menampilkan menu bantuan"
	echo ""
	echo "Contoh:"
	echo "	- Penggunaan dasar: ${0} -f [FILE] atau ${0} --file [FILE]"
	echo "	- Menyimpan hasilnya kedalam file: ${0} -f [FILE] -s [FILE] atau ${0} --file [FILE] --simpan [FILE]"
}

if [[ "${#}" -gt 4 ]]; then
	menu_bantuan
else
	if [[ "${#}" -eq 1 ]]; then
		if [[ "${1}" == "-v" || "${1}" == "--versi" ]]; then
			echo "1"
		elif [[ "${1}" == "-b" || "${1}" == "--bantuan" ]]; then
			menu_bantuan
		else
			menu_bantuan
		fi
	elif [[ "${#}" -eq 2 ]]; then
		if [[ "${1}" == "-f" || "${1}" == "--file" ]]; then
			if [[ -f "${2}" ]]; then
				file="${2}"
				md5=$(md5sum "${file}" | awk '{print $1}')
				sha1=$(sha1sum "${file}" | awk '{print $1}')
				sha256=$(sha256sum "${file}" | awk '{print $1}')
				sha512=$(sha512sum "${file}" | awk '{print $1}')
				copyright
				echo "[+] Nama file: ${file}"
				echo "[*] Menghitung nilai Hash file: ${file}"
				sleep 3
				echo "[*] Nilai Hash file: ${file}"
				echo "[+] MD5: ${md5}"
				echo "[+] SHA-1: ${sha1}"
				echo "[+] SHA-256: ${sha256}"
				echo "[+] SHA-512: ${sha512}"
				echo "[-] Nilai Hash file '${file}' tidak disimpan. Untuk menyimpannya tambahkan opsi -s [FILE] atau --simpan [FILE]."
			else
				echo "Error: File '${2}' tidak ditemukan."
				exit 1
			fi
		else
			menu_bantuan
		fi
	elif [[ "${#}" -eq 4 ]]; then
		if [[ "${1}" == "-f" || "${1}" == "--file" || "${1}" == "-s" || "${1}" == "--simpan" ]]; then
			if [[ "${1}" == "-f" || "${1}" == "--file" ]]; then
				if [[ -f "${2}" ]]; then
					file="${2}"
					simpan="${4}"
					md5=$(md5sum "${file}" | awk '{print $1}')
					sha1=$(sha1sum "${file}" | awk '{print $1}')
					sha256=$(sha256sum "${file}" | awk '{print $1}')
					sha512=$(sha512sum "${file}" | awk '{print $1}')
					copyright
					echo "[+] Nama file: ${file}"
					echo "[*] Menghitung nilai Hash file: ${file}"
					sleep 3
					echo "[*] Nilai Hash file: ${file}"
					echo "[+] MD5: ${md5}"
					echo "[+] SHA-1: ${sha1}"
					echo "[+] SHA-256: ${sha256}"
					echo "[+] SHA-512: ${sha512}"
					echo "[+] Nilai Hash file '${file}' disimpan di: ${simpan}."
					{
						copyright
						echo "[+] Nama file: ${file}"
						echo "[*] Nilai Hash file: ${file}"
						echo "[+] MD5: ${md5}"
						echo "[+] SHA-1: ${sha1}"
						echo "[+] SHA-256: ${sha256}"
						echo "[+] SHA-512: ${sha512}"
					} > "${simpan}"
				else
					echo "Error: File '${2}' tidak ditemukan."
					exit 1
				fi

			elif [[ "${1}" == "-s" || "${1}" == "--simpan" ]]; then
				if [[ -f "${4}" ]]; then
					file="${4}"
					simpan="${2}"
					md5=$(md5sum "${file}" | awk '{print $1}')
					sha1=$(sha1sum "${file}" | awk '{print $1}')
					sha256=$(sha256sum "${file}" | awk '{print $1}')
					sha512=$(sha512sum "${file}" | awk '{print $1}')
					copyright
					echo "[+] Nama file: ${file}"
					echo "[*] Menghitung nilai Hash file: ${file}"
					sleep 3
					echo "[*] Nilai Hash file: ${file}"
					echo "[+] MD5: ${md5}"
					echo "[+] SHA-1: ${sha1}"
					echo "[+] SHA-256: ${sha256}"
					echo "[+] SHA-512: ${sha512}"
					echo "[+] Nilai Hash file '${file}' disimpan di: ${simpan}."
					{
						copyright
						echo "[+] Nama file: ${file}"
						echo "[*] Nilai Hash file: ${file}"
						echo "[+] MD5: ${md5}"
						echo "[+] SHA-1: ${sha1}"
						echo "[+] SHA-256: ${sha256}"
						echo "[+] SHA-512: ${sha512}"
					} > "${simpan}"
				else
					echo "Error: File '${2}' tidak ditemukan."
					exit 1
				fi
			else
				menu_bantuan
			fi
		else
			menu_bantuan
		fi
	else
		menu_bantuan
	fi

fi
