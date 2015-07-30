# Session links to the directory in views

class SessionController < ApplicationController

	#login form
	def new
		#rails will render new by default
	end

	#logging in
	def create
		@user = User.find_by(email: params[:email])

#check if we have @user 
		if @user && @user.authenticate(params[:password])
			#session[] is part of rails like params(it is a global variable(a hash))
			session[:user_id] = @user.id
			# correct password
			redirect_to '/' # or root_path
		else
			#incorrect email or password
			render :new
		end
	end

	#logging out
	def destroy
		#session is a global hash *only set :user_id*
		session[:user_id] = nil
		redirect_to root_path # or '/'
	end

end