#!/bin/bash

DB_PATH="data/internal/databases.db"

OUTPUT_FILE="data/internal/temp/workdata1.json"

sqlite3 "$DB_PATH" <<EOF
.headers off
.mode json
.output $OUTPUT_FILE
SELECT data FROM databases WHERE file_name = 'working_data.RDA';
.output stdout
EOF

echo "Data exported to $OUTPUT_FILE"

install.packages("jsonlite")
library(jsonlite)
