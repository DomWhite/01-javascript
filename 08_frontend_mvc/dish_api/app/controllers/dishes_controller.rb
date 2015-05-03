class DishesController < ApplicationController

	def home
	end

	def index

		# sleep 2

		dishes = [{
			title: 'backend pie',
			starCount: 3
			},{
			title: 'rails cake',
			starCount: 5
		}]
		
# by default it will render in html, this is overriding that to json
#  and then display dishes in json format
			render :json => dishes.to_json
	end

end