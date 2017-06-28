# Ruby file to create SudentData table that stores attributes Firstname, Lastname, Major, GPA.
require 'dm-core'
require 'dm-migrations'

class StudentData
  include DataMapper::Resource
  property :id, Serial
  property :sfname, String
  property :slname, String
  property :major, String
  property :gpa, Float
end

get '/students' do
  if session[:admin]
    @students = StudentData.all
    erb :students
  else
    erb :ask_login
  end
end

get '/students/new' do
  halt(401,'Not Authorized') unless session[:admin]
  @student = StudentData.new
  erb :new_student
end

get '/students/:id' do
  @student = StudentData.get(params[:id])
  erb :show_student
end

get '/students/:id/edit' do
  @student = StudentData.get(params[:id])
  erb :edit_student
end

post '/students' do  
  student = StudentData.create params[:student]
  puts params[:student]
  redirect to("/students/#{student.id}")
end

put '/students/:id' do
  student = StudentData.get(params[:id])
  student.update(params[:student])
  redirect to("/students/#{student.id}")
end

delete '/students/:id' do
  StudentData.get(params[:id]).destroy
  redirect to('/students')
end
