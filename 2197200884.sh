#!/bin/bash
# set an infinite loop
while :
do
# display menu
clear
echo "Server Name - $(hostname)"
echo "------------------------------"
echo " MAIN - MAIN "
echo "------------------------------"
echo "A. Operasi Aritmatika."
echo "B. Informasi Pembuat."
echo "C. Exit."
echo "------------------------------"
# get input from the user
read -p "Enter your choice [ A -C ] " choice
# make decision using case..in..esac
        case $choice in
        A) clear
           echo "Operasi Aritmatika"
           echo "------------------"
           echo "1. Penjumlahan"
           echo "2. Pengurangan"
           echo "3. Perkalian"
           echo "4. Pembagian"
           echo "5. Kembali ke Menu Utama..."
           echo "---------------------------"
           # get input from the user
           read -p "Enter your choice [ 1 -5 ] " choice2
           case  $choice2 in
           1)
             clear
             echo "Penjumlahan"
             echo -n "masukan angka pertama = "
             read pertama
             echo -n "masukan angka kedua = "
             read kedua
             n=$[pertama + kedua]
             echo "Hasil penjumlahan $pertama + $kedua adalah $n"
             read -p "Press [Enter] key to continue..."
             readenterkey
             ;;
           2)
             clear
             echo "Pengurangan"
             echo -n "masukan angka pertama = "
             read pertama
             echo -n "masukan angka kedua = "
             read kedua
             n=$[pertama - kedua]
             echo "Hasil pengurangan $pertama - $kedua adalah $n"
             read -p "Press [Enter] key to continue..."
             readenterkey
             ;;
           3)
             clear
             echo "Perkalian"
             echo -n "masukan angka pertama = "
             read pertama
             echo -n "masukan angka kedua = "
             read kedua
             n=$[pertama * kedua]
             echo "Hasil perkalian $pertama * $kedua adalah $n"
             read -p "Press [Enter] key to continue..."
             readenterkey
             ;;
           4)
             clear
             echo "Pembagian"
             echo -n "masukan angka pertama = "
             read pertama
             echo -n "masukan angka kedua = "
             read kedua
             n=$[pertama / kedua]
             echo "Hasil pembagian $pertama / $kedua adalah $n"
             read -p "Press [Enter] key to continue..."
             readenterkey
             ;;
           5)
             echo "kembali ke menu Utama"
             ;;
           esac
           ;;
       B)
           clear
           echo "Informasi  Pembuat"
           echo "------------------------"
           echo "1. Nama, Nim, Home dir"
           echo "2. Username@ Hostname"
           echo "3. Kembali ke Menu Utama"
           echo "------------------------"
           # get input from the user
           read -p "Enter your choice [ 1 - 3 ]" choice3
           case $choice3 in
           1)
             clear
             echo "Nama, Nim, Home dir"
             echo "Nama      : Agustinus sani"
             echo "Nim       : 2197200884"
             echo "Directory :$(pwd)"
             read -p "Press [Enter] key to continue..."
             readenterkey
             ;;
           2)
             clear
             echo "Username@ Hostname"
             echo "Username    :$(who -m)"
             echo "Hostname    :$(hostname)"
             read -p "Press [enter] key to continue..."
             readenterkey
             ;;
           3)
             echo "kembali ke Menu Utama"
             ;;
         esac
        ;;
       C)
          echo "Bye!"
          exit 0
           ;;
       *)
         echo "Error: Invalid Option..."
         read -p "Press [Enter] key to continue..."
         readenterkey
;;
esac
done

