echo "====== 正在备份biodigest.org的files目录======"
echo "\n"
scp -p -r xianaine@70.40.209.90:/home1/xianaine/public_html/biodigest/sites/default/files/ ~/tmp/biodigest_backup_tmp
echo "\n"
echo "====== 正在设置备份网站的files文件夹======"
echo "85912155" | sudo -S cp -a ~/tmp/biodigest_backup_tmp/files ~/www/backup/biodigest/sites/default/
echo "85912155" | sudo -S chown -R www-data:www-data ~/www/backup/biodigest/sites/default/files
echo "\n"
echo "/sites/default/files目录备份完成。"

echo "====== 正在备份biodigest.org的数据库文件======"
echo "\n"
scp -p xianaine@70.40.209.90:/home1/xianaine/public_html/biodigest/backup_migrate_files/backup_migrate/scheduled/*.gz ~/tmp/biodigest_backup_tmp/database
echo "\n"
echo "====== 正在设置备份网站的数据库文件======"
echo "85912155" | sudo -S cp -a ~/tmp/biodigest_backup_tmp/database/*.gz ~/www/backup/biodigest/backup_migrate_files/backup_migrate/scheduled
echo "85912155" | sudo -S chown -R www-data:www-data ~/www/backup/biodigest/backup_migrate_files/backup_migrate/scheduled
echo "biodigest.org的数据库文件备份完成。"
