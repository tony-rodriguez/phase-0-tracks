# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# display data from a single column from students
get '/students/search/:attribute' do
  @column_type = params['attribute']
  @column = db.execute("SELECT #{@column_type} FROM students")
  erb :single_column
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# allow the user to search for a column of data
get '/students/search' do
  erb :column_search
end

# receive user input for search
post '/search_results' do
  attribute = params['attribute']
  valid = %w{name campus age}
  if valid.include? attribute.downcase
    redirect "/students/search/#{attribute}"
  else
    "Sorry, that is not a valid search parameter."
  end
end

# add static resources