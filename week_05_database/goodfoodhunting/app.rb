require 'sinatra'
require 'sinatra/reloader'
require 'pg' #for postgresql
require 'pry'

require_relative 'config'
require_relative 'dish'

after do 
	ActiveRecord::Base.connection.close
end

get '/'  do
	# sql = 'SELECT * FROM dishes;'
	# @rows = run_sql(sql)
	@dishes = Dish.all

	erb :index
end

get '/dishes' do
	# sql = 'SELECT * FROM dishes ORDER BY name;'
	# @rows = run_sql(sql)
	@dishes = Dish.all

	erb :index
end 

#show new form to get information
get '/dishes/new' do 
	erb :new
end

#create new dish
post '/dishes' do
	# sql = "INSERT INTO dishes (name, image_url) VALUES ('#{params['name']}', '#{params['image_url']}')"

	# run_sql(sql)
	Dish.create name: "#{params['name']}", image_url: "#{params['image_url']}"
	redirect to ('/')
end

#show edit form
get '/dishes/:id/edit' do  #having :id here makes a dynamic link(from what was clicked) 
							#It is a place holder for below
	# sql = "SELECT * FROM dishes WHERE id = #{params[:id]}"
	# rows = run_sql(sql)
	# @dish = rows[0]
	@dish = Dish.find(params[:id])
	erb :edit
end



#update existing dish
put '/dishes/:id' do  

	# sql = "UPDATE dishes SET name='#{params[:name]}', image_url='#{params[:image_url]}' WHERE id = #{params[:id]};"
	# # 							taken from form				taken from form		  params :id here is taken from the route url^
	# run_sql(sql)
	dish = Dish.find(params[:id])
	dish.name = params[:name]
	dish.image_url = params[:image_url]
	dish.save

	#dish.update name: params[:name], image_url: params[image_url] -- no .save is necessary for update

	redirect to '/'
end

#delete a dish 
delete '/dishes/:id/delete' do
  # sql = "DELETE FROM dishes WHERE id = #{params[:id]};"
  # run_sql(sql)
  unwanted_dish = Dish.find(params[:id])
  unwanted_dish.destroy

  redirect to '/'
end

# def run_sql(sql)
# 	db = PG.connect(:dbname => 'goodfoodhunting')
# 	rows = db.exec(sql)
# 	db.close
# 	return rows
# end