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

def display_menu
  puts "Menu options: enter the keyword of your choice"
  puts "-"*35
  puts "Read - see all previous blog posts"
  puts "Write - create your own blog post"
  puts "Search - look for a specific blog post"
  puts "Edit - change something about a post"
  puts "Remove - delete a prior post of yours"
  puts "Quit - leave this blog"
  puts "-"*35
end

def display_posts(database, posts = database.execute('SELECT * FROM blog'))
  posts.each do |post|
    # puts '-'*35
    puts "Post ID: #{post['id']} Date: #{post['post_date']} Title: #{post['title']} "
    puts "Author: #{post['author']}"
    puts post['content']
    puts '-'*35
  end
end

def new_post(database)
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
    database.execute("INSERT INTO blog (title, author, post_date, content) VALUES (?, ?, date('now'), ?)", [new_title, auth_name, new_content])
  end
end

# this method determines what type of search the user wants, then calls the correct search method
def search_blog(database)
  puts "Please select a search option:"
  puts "To find all posts by an author, enter 'author'"
  puts "To find a post by its id, enter 'id'"
  puts "To find a post by date of posting, enter 'date'"
  puts "To find a post by title, enter 'title'"
  search_type = gets.chomp.downcase
  if search_type == 'author'
    search_by_author(database)
  elsif search_type == 'id'
    search_by_id(database)
  elsif search_type == 'date'
    search_by_date(database)
  elsif search_type == 'title'
    search_by_title(database)
  end
end

def search_by_author(database)
  puts "Enter the name of the author you are looking for:"
  search_name = gets.chomp
  results = database.execute('SELECT * FROM blog WHERE author=?', [search_name])
  if !results.empty?
    display_posts(database, results)
  else
    puts "Sorry, I couldn't find any posts with that author!"
  end
end

def search_by_id(database)
  puts "Enter the id of the post you are looking for:"
  search_id = gets.chomp.to_i
  result = database.execute('SELECT * FROM blog WHERE id=?', [search_id])
  if !result.empty?
    display_posts(database, result)
  else
    puts "Sorry, I couldn't find any posts with that id!"
  end
end

def search_by_date(database)
  puts "Enter the date of the post(s) you are looking for (YYYY-MM-DD):"
  search_date = gets.chomp
  results = database.execute('SELECT * FROM blog WHERE post_date=?', [search_date])
  if !results.empty?
    display_posts(database, results)
  else
    puts "Sorry, I couldn't find any posts with that date!"
  end
end

def search_by_title(database)
  puts "Enter the title (or part of the title) of the post you are looking for:"
  search_term = gets.chomp.downcase
  posts = database.execute('SELECT * FROM blog')
  posts.keep_if { |post| post['title'].downcase.include?(search_term) }
  if !posts.empty?
    display_posts(database, posts)
  else
    puts "Sorry, I couldn't find any posts with that term in the title!"
  end
end

def edit_post(database, id, new_value)

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
      new_post(db)
  elsif input == 'edit'
    search_blog(db)
  elsif input == 'search'
    search_blog(db)
  else puts "Sorry, that command was invalid. Refer to the menu for valid options. Please try again:"
  end
  input = gets.chomp.downcase
end