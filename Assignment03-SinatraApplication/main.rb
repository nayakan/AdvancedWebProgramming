# Main file with route handlers: Home, about, contact, video, login.
require 'sinatra'
require 'slim'
require 'sass'
require './students'
require './comments'

configure do
  enable :sessions
  set :username, 'akshatha'
  set :password, 'nayak'
end

configure :development do
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/coen278.db")
end

configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end

DataMapper.finalize
DataMapper.auto_upgrade!

get('/styles.css'){ scss :styles }

get '/' do
  erb :home
end

get '/home' do
  erb :home
end

get '/about' do
  @title = "All About This Website"
  erb :about
end

get '/contact' do
  erb :contact
end


get '/video' do
  erb :video
end

get '/login' do
  erb :login
end

not_found do
  erb :not_found
end


post '/login' do
  if params[:username] == settings.username && params[:password] == settings.password
    session[:admin] = true
    redirect to('/students')
  else
    erb :login
  end
end
get '/logout' do
  session.clear
  redirect to('/')
end

get '/set/:name' do
  session[:name] = params[:name]
end

get '/get/hello' do
  "Hello #{session[:name]}"
end  
