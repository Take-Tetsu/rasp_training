#!/bin/sh

# psqlコマンドでdvdrentalというデータベースを作成する
psql -U postgres -c "create database dvdrental"

# dvdrental.tarからリストアをする
echo "import dvd rental data..."
pg_restore -U postgres -d dvdrental /var/lib/postgres/data/dvdrental.tar

echo "finish"