  
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative 'db_config'
require_relative 'post'   

class Category < ActiveRecord::Base
	has_many :posts #plural because it has many "posts" to which one category name can relate
end

after do 
	ActiveRecord::Base.connection.close
end

before do
	# @categories = Post.pluck(:category).uniq -- this method for single table
	@categories = Category.all
end

binding.pry

get '/' do
	@posts = Post.all
  erb :index
end

get '/posts/new' do  #this route is to display the form to "get" information to post
	erb :new		#new page for to get data
end

post '/posts' do  #entry point where we can communicate with database
	post = Post.new
	post.title = params[:title]
	if post.save
		redirect to '/'		#if successful return to index
	else 
		erb :new	#if unsuccessful return to form
	end
end

# JSON api (application programming interface)

get "/api/posts" do
	#JSON representation of data
	content_type :json #denotes what Post will be
	Post.all.to_json #makes Post json
end

post "/api/posts" do
	post = Post.new
	post.title = params[:title]
	post.save
	content_type :json
	post.to_json
end






