echo Removing Old Files:
echo
rm -R generated-migrations
rm dump.sql
echo done
echo ==============================
echo
echo drop create database:
mysql -u root -e "drop database test4"
mysql -u root -e "create database test4"
echo done
echo
echo ==============================
echo run propel commands:
echo 
echo --diff 1---------------------------
vendor/bin/propel diff
echo
echo --migrate 1---------------------------
vendor/bin/propel migrate
echo
echo --diff 2---------------------------
vendor/bin/propel diff
echo
echo --migrate 2---------------------------
vendor/bin/propel migrate
echo
echo --diff 3---------------------------
vendor/bin/propel diff
echo
echo --migrate 3---------------------------
vendor/bin/propel migrate
echo
echo --diff 4---------------------------
vendor/bin/propel diff
echo
echo --migrate 4---------------------------
vendor/bin/propel migrate
echo
echo done
echo ==============================
mysqldump -u root test4 > dump.sql
