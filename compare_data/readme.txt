sqlite3
sqlite3> .mode tabs
sqlite3> .headers on
sqlite3> .import inventory.tsv tevo
sqlite3> .import tp.tsv tickpick
sqlite3> .read tickpick_brokers.sql
