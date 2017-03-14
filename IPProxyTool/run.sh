echo "# coding=utf-8

database_config = {
    'host': '${DATABASE_HOST}',
    'port': ${DATABASE_PORT},
    'user': '${DATABASE_USER}',
    'password': '${DATABASE_PASS}',
}

free_ipproxy_database = '${DATABASE_DB_NAME}'
free_ipproxy_table = '${DATABASE_TABLE_NAME}'
httpbin_table = '${DATABASE_HTTPBIN_TABLE_NAME}'

data_port = '${DATA_PORT}'
" > config.py

python ipproxytool.py