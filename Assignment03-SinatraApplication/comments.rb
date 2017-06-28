# File to create CommentData Table that will hold attributes Name, User comment and time the comment was created.
require 'dm-core'
require 'dm-migrations'
require 'dm-timestamps'

class CommentData
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :user_comment, String
  property :created_at, DateTime
end

get '/comments' do
    @comments = CommentData.all
    erb :comments
end

get '/comments/new' do
  erb :new_comment
end

get '/comments/:id' do
  @comment = CommentData.get(params[:id])
  erb :show_comment
end

post '/comments' do
  comment = CommentData.new(params[:comment])
  if comment.save
    redirect to("/comments/#{comment.id}")
  else
    "Error saving comment"
  end
end

put '/comments/:id' do
  comment = CommentData.get(params[:id])
  comment.update(params[:comment])
  redirect to("/comments/#{comment.id}")
end

delete '/comments/:id' do
  CommentData.get(params[:id]).destroy
  redirect to('/comments')
end








