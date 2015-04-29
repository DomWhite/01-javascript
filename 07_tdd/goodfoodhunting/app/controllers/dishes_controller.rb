class DishesController < ApplicationController

#these method names are used by rails as convention. 
	def index
		@dishes = Dish.all
	end

	def new
		@dish = Dish.new  #so the input field value is blank and the form doesn't break
	end

	def create
		# binding.pry
		@dish = Dish.new(dish_params)
		# @dish.title = params[:dish][:title]
		# @dish.image_url = params[:image_url]
		if @dish.save
			redirect_to '/'
		else
			render :new
		end
	end

	#by convention the template is the same as the method name
	def edit
		@dish = Dish.find(params[:id])
	end

	def update
		dish = Dish.find(params[:id])
		# dish.title = params[:title]
		# dish.image_url = params[:image_url]
		if dish.update(dish_params)
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

	def show
		@dish = Dish.find(params[:id])
	end


	# strong params or white listing
	def dish_params #tag_ids is nested
		params.require(:dish).permit(:title, :image_url, :photo, :remote_photo_url, :tag_ids => [])
	end

end