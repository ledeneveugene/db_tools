source db.env.sh

mysqldump -h $hostname -u $username -p$password $database | gzip > ./_export_from_db/before_import_db.sql.gz
gunzip < ./_import_to_db/db.sql.gz | mysql -h $hostname -u $username -p$password $database
mv -f ./_import_to_db/db.sql.gz ./_import_to_db/db.sql.gz.bak