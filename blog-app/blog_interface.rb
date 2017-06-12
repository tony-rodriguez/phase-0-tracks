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
  puts "Search - look for a specific blog post"
  puts "Edit - change something about a post"
  puts "Remove - delete a post of yours"
  puts "Quit - leave this blog"
  puts "-"*35
end

def display_posts(database)
  blog_data = database.execute('SELECT * FROM blog')
  blog_data.each do |post|
    # puts '-'*35
    puts "Post No.: #{post['id']} Date: #{post['post_date']} Title: #{post['title']} "
    puts "Author: #{post['author']}"
    puts post['content']
    puts '-'*35
  end
end

def new_post(database, name, title, content)
  puts "name: #{name}"
  puts "title: #{title}"
  puts "content: #{content}"
end

puts "Hi! Welcome to my blog. Below is the menu. If you'd like to see this menu again later, type in 'menu'."
display_menu
input = gets.chomp.downcase
until input == 'quit' do
  if input == 'menu'
    display_menu
  elsif input == 'read'
    display_posts(db)
  elsif input == 'write'
    puts '-'*35
    puts "Thank you for contributing! The following prompts will guide you through the process of authoring a post. Type 'cancel' at any step to escape this process."
    puts
    puts "How would you like your name to appear (as author)?"
    author_name = gets.chomp
    unless author_name.downcase == 'cancel'
      puts "What would you like the title of your post to be?"
      title = gets.chomp
    end
    # must check for nil in the event that user enters cancel before prompted for title or content
    unless title.nil? || title.downcase == 'cancel'
      puts "Paste or type your content:"
      content = gets.chomp
    end
    unless content.nil? || content.downcase == 'cancel'
      new_post(db, author_name, title, content)
    end
  else puts "Sorry, your input doesn't seem to be valid. Refer to the menu for valid options. Please try again: "
  end
  input = gets.chomp.downcase
end