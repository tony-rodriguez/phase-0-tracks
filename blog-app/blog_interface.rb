require 'sqlite3'

db = SQLite3::Database.new('blog.db')

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS blog(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    post_date TEXT,
    content VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)