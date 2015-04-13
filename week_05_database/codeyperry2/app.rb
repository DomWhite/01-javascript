require 'sinatra'
require 'sinatra/reloader'
# require 'json' is not needed as active_record already has it as a dependency
require 'httparty'
require 'pry'

require_relative 'config'
require_relative 'student'

get '/' do

	erb :index
end

get '/api/students' do

	students = Student.all 
	content_type :json
	students.to_json

end

get '/dom' do 
	result = HTTParty.get('http://localhost:4567/api/students')
	result.to_s
end