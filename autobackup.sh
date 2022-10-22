curl -O
https://downloads.rclone.org/rclone-current
-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
cd rclone-*-linux-amd64
cp rclone /usr/bin/
chown root:root /usr/bin/rclone
chmod 755 /usr/bin/rclone
cd
rclone config
n

//Your Backup Data Name, replace this 
name
//
drive


1


n

