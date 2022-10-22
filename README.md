# This Is Script Auto Backup in VPS
script created by me <br>
full tutorial is on my youtube [YOUTUBE](https://youtu.be/m8JcTf3dd7Y)

# How To Run The script?
##### 1. Download the file [autobackup.sh](https://github.com/EdoGaming28/autobackup/archive/refs/heads/main.zip)
##### 2. Put the autobackup.sh file into the vps
##### 3. Open the file and replace the "name" to the name of your backup file center that will be used when transferring files to Google Drive
```java
//Your Backup Data Name, replace this 
name
//
```
##### 4. Save Changed and Run the script:
```html
chmod +x ./autobackup.sh
./autobackup.sh
```
##### 5. then if the script is running successfully, a link will appear that will ask you to connect the account that will be used to backup files.
##### 6. copy the code in your chrome and paste to vps

# How to set the AUTOMATICALLY / Auto Backup
1. Create the file backup.sh
2. Then copy this script and paste in file backup.sh
```html
date=$(date +%d-%m-%y)
zip -r namafile-$date.zip /root/directory/
rclone copy namafile-$date.zip name:
rm namafile-$date.zip
```
> change the "namefile" to the name of the file to be backed up and which will appear on google drive <br>
> change the /root/directory/ to the folder location that will be automatically zipped <br>
> change the "name" to the name you entered in the third step (step ketiga)
### WARNING!!! Don't replace what I didn't tell you to change
3. Save the file and run the script:
```html
chmod +x ./backup.sh
```
```html
apt-get install cron
crontab -e
```
```html
1
```
> then paste this script outside # or at the bottom
```html
* 7 * * * bash /root/backup.sh
```
![gambar](https://gosigitgo.files.wordpress.com/2010/03/crontab-syntax.gif?w=510)

> * 7 * * * Means that the script will automatically run every 7 am, or the file will be transferred to Google Drive every 7 am
4. And save the file
> if you use the editor from vps then run CTRL+X then Y, to save the changes

# Command Manual RCLONE
### Create A Folder
```html
rclone mkdir name:/namaFolder
```
> replace "name" to your backup file center name in step 3

### Copy File To Google Drive
```html
rclone copy namafile.zip name:
```
> replace "name" to your backup file center name in step 3 <br>
> change the "namafile" to the name of the file you want to copy into google drive

### Download files from Google Drive to your vps
```html
rclone copy name:/namafile.zip /root/
```
> replace "name" to your backup file center name in step 3 <br>
> change the "namafile" to the name of the file you want to copy into google drive <br>
> change the "root" to where the file you want to put the download

### Check the files in Google Drive
```html
rclone ls name:
```
> replace "name" to your backup file center name in step 3

# Manual:
>if the method above doesn't work or error, use a manual script.
```html
apt update && apt upgrade
```
```html
curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
```
```html
unzip rclone-current-linux-amd64.zip
```
```html
cd rclone-*-linux-amd64
```
```html
cp rclone /usr/bin/
```
```html
chown root:root /usr/bin/rclone
```
```html
chmod 755 /usr/bin/rclone
```
```html
cd
```
```html
rclone config
```
```html
n
```
```html
enter.
```
#### replace "name" to your backup file center name.
```html
name
```
```html
drive
```
```html
enter.
```
```html
enter.
```
```html
1
```
```html
enter.
```
```html
enter.
```
```html
n
```
- then if the script is running successfully, a link will appear that will ask you to connect the account that will be used to backup files.
- copy the code in your chrome and paste to vps
