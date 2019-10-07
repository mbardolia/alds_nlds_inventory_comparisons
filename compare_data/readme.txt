connect to tevo db, run tevo_inventory.sql, save results as:


in order to get the csv files in to a db:

# sqlite3 db.sqlite3
sqlite3> .mode tabs
sqlite3> .headers on
sqlite3> .import tevo_inventory.tsv tevo
sqlite3> .import tp.tsv tickpick
sqlite3> .read tickpick_brokers.sql

then run the *.sql files to do .sql things
sqlite3> .headers on
sqlite3> .output broker_counts.tab
sqlite3> .read broker_counts.sql

