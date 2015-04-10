require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'
require 'httparty'
require 'uri'


get '/' do
	if !params[:title].nil? && !params[:title].empty?
  		# @result = HTTParty.get("http://www.omdbapi.com/?t=#{params[:title]}")
	else
		@result = {}
	end
	erb :index #, :layout => false
	# binding.pry
end

get '/about' do
	erb :about
	# binding.pry
end

get '/movie' do
	url = "http://www.omdbapi.com/?t=#{params[:movie_name]}"


	#check database first
	#if movie exists then fetch from database else fetch from omdb
	sql = "SELECT Title FROM movies WHERE Title = '#{params["movie_name"]}'"
	db = PG.connect(:dbname => 'omdb') 
	rows = db.exec(sql) #returning rows
	
	if rows.count > 0 # Check PG documentation .empty .length didn't work

		# movie exists in data base
		@result = rows.first 	#rows[0]
	else 
		#fetch from omdb
		raw_result = HTTParty.get(URI.escape(url))
		
		@result = {}
		raw_result.each do |key, value|
			@result[key.downcase] = value
		end

		

		#save to database
		sql = "INSERT INTO movies (Title, Year, Poster) VALUES ('#{@result['title']}', '#{@result['year']}', '#{@result['poster']}');"
		db.exec(sql) #executing sql to the connected database
	end

		db.close

	erb :movie
end