class PagesController < ApplicationController

	def index
		#where is the render?? which template to display??
		#it's by convention. directory page is searched for index
		@dishes = Dish.all
	end

	def about
	end

end