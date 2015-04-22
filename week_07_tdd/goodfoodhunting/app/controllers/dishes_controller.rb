class DishesController < ApplicationController

	def index
		@dishes = Dish.all
	end

	def new
	end

	def create
		@dish = Dish.new
		@dish.title = params[:title]
		@dish.image_url = params[:image_url]
		if @dish.save
			redirect_to '/'
		else
			render :new
		end
	end

	#by convertion the template is the same as the method name
	def edit
		@dish = Dish.find(params[:id])
	end

	def update
		dish = Dish.find(params[:id])
		dish.title = params[:title]
		dish.image_url = params[:image_url]
		if dish.save
			redirect_to '/'
		else
			render :edit
		end
	end

	def destroy
		unwanted_dish = Dish.find(params[:id])
  		unwanted_dish.destroy
			redirect_to '/'
	end

end