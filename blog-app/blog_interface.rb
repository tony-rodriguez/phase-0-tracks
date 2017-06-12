require 'sqlite3'

db = SQLite3::Database.new('blog.db')
db.results_as_hash = true

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

# insert_test = <<-SQL
#   INSERT INTO blog (title, author, post_date, content) VALUES
#   ('First Post!', 'Tony Rodriguez', date('now'), "I hope this works!")
# SQL

def display_menu
  puts "Menu options: type the keyword of your choice"
  puts "-"*35
  puts "Read - see previous blog posts"
  puts "Write - create your own blog post"
  puts "Search - look for specific blog posts"
  puts "Edit - change something about a post"
  puts "Remove - delete a post of yours"
  puts "Quit - leave this blog"
  puts "-"*35
end

def display_posts(database)
  blog_data = database.execute('SELECT * FROM blog')
  blog_data.each do |post|
    puts "Post No.: #{post['id']} Date: #{post['post_date']} Title: #{post['title']} "
    puts "Author: #{post['author']}"
    puts post['content']
  end
end

puts "Hi! Welcome to my blog. Below is the menu. If you'd like to see this menu again later, type in 'menu'."
display_menu
input = gets.chomp.downcase
until input == 'quit' do
  if input == 'menu'
    display_menu
  elsif input == 'read'
    display_posts(db)
  end
  input = gets.chomp.downcase
end