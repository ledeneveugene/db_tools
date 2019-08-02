source db.env.sh

mv -f ./_export_from_db/db.sql.gz ./_export_from_db/db.sql.gz.old
mysqldump -h $hostname -u $username -p$password $database | gzip > ./_export_from_db/db.sql.gz
