require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'
require 'yahoofinance'

# def present?(thing)				# method can be used by uncommenting if present below
# 	!thing.nil? && !thing.empty?
# end

get "/" do 
	# if present?(params[:stock_symbol])
	if !params[:stock_symbol].nil? && !params[:stock_symbol].empty?
		@result = YahooFinance::get_quotes(YahooFinance::StandardQuote, params[:stock_symbol])
		@price = @result[params[:stock_symbol]].lastTrade

		File.open('database.txt', 'a+') do |file| 
			file.puts "#{params[:stock_symbol]} #{@price}"
		end
	end

	erb :index
end

get "/history" do

@stocks = []

	File.open('database.txt', 'r') do |file|

		file.each do |line|
			@stocks << line
		end
	end

	erb :history
end