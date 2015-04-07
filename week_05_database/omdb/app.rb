require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'


get '/'  do
	sql = 'SELECT * FROM movies;'
	@rows = run_sql(sql)

	erb :index
end


def run_sql(sql)
	db = PG.connect(:dbname => 'moviedatabase')
	rows = db.exec(sql)
	db.close
	return rows
end