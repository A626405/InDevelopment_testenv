import sqlite3
import csv

conn = sqlite3.connect('databases.db')
cursor = conn.cursor()
cursor.execute("SELECT file_name, hex(data) FROM databases WHERE file_name = 'working_data.RDA';")

with open('data/internal/temp/test1.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['file_name', 'data'])  # Column headers
    for row in cursor.fetchall():
        writer.writerow(row)

conn.close()
