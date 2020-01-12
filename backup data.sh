#!/bin/bash

#Display welcome message,computer name and date

echo "++++ Backup Shell Script ++++"

echo
echo "+++ Run Time: $(date) @ $(hostname)"

echo
echo "+++ Masukan Lokasi Folder Untuk Backup +++"
read folder

# Define variable

BACKUP=$folder
NOW=$(date +"%d-%m-%Y")

# Let us Start Backup

echo "+++ Dumping MySQL database to $BACKUP/$NOW......"

# And we are Done

if	[ -d $BACKUP/$NOW ]
then
	
echo "+++ Folde $BACKUP/$NOW Sudah Ada"

sleep 5
	
echo "+++ Mengganti Folder di $BACKUP/$NOW +++"

echo "+++ Berhasil Membackup File $BACKUP/$NOW"
	
rm -r $BACKUP/$NOW/

mkdir $BACKUP/$NOW/

cd $BACKUP/$NOW/
	
tar -czvf latest.tar.gz -P $BACKUP

else
	echo "+++ Membuat Folder di $BACKUP/$NOW +++"

echo "+++ Berhasil Membackup File $BACKUP/$NOW"
	
mkdir $BACKUP/$NOW/
	
cd $BACKUP/$NOW/
	
tar -czvf latest.tar.gz -P $BACKUP

fi

sleep 3

echo "+++ Backup Wrote to $BACKUP/$NOW/latest.tar.gz"
