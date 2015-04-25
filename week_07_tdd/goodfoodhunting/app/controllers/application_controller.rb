class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def logged_in? # trick to convert object to boolean (uses double negative)
		!!current_user
	end
helper_method :logged_in?


# binding.pry
	def current_user
		# session is a global variable
		#find_by will return nil if record not found
		#find will break if record not found
		User.find_by(id: session[:user_id])
	end
	helper_method :current_user
end
