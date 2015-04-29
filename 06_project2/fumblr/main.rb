  
require 'sinatra'
# require 'sinatra/reloader'
# require 'pry'
require 'bcrypt'

enable :sessions #turn on sessions

require_relative 'db_config'
require_relative 'post'   

class User < ActiveRecord::Base
	has_secure_password
end

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

helpers do #helper method
	def logged_in? # trick to convert object to boolean (uses double negative)
		!!current_user
	end


# binding.pry
	def current_user
		# session is a global variable
		#find_by will return nil if record not found
		#find will break if record not found
		User.find_by(id: session[:user_id])
	end
end

get '/session/new' do

	erb :login
end

post '/session' do
	@user = User.where(email: params[:email]).first
	# @user = User.find_by(email: params[:email])

	if @user && @user.authenticate(params[:password])
		#session[] is part of sinatra like params(it is a global variable)
		session[:user_id] = @user.id
		# correct password
		redirect to '/'
	else
		#incorrect email or password
		erb :login
	end
end

delete '/session' do
	session[:user_id] = nil
	redirect to '/'
end


get '/' do
	@posts = Post.all
  erb :index
end

get '/posts/new' do  #this route is to display the form to "get" information to post
	# request.path.to_is //request is useful for path exclusion
	redirect to '/session/new' unless current_user
	erb :new		#new page for to get data
end

get '/posts/:anything' do
	params[:anything].to_s
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






