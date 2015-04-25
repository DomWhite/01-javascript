class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new  #so the input field value is blank and the form doesn't break
	end

	def create

		@user = User.new(user_params)

		if @user.save
			redirect_to '/users'
		else
			render :new
		end
	end

	#by convention the template is the same as the method name
	def edit
		@user = User.find(params[:id])
	end

	def update
		user = User.find(params[:id])

		if user.update(user_params)
			redirect_to '/users'
		else
			render :edit
		end
	end

	def destroy
			user = User.find(params[:id])
  		user.destroy
			redirect_to '/users'
	end

	def show
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:email, :password_digest)
	end



end