class ApplicationController < ActionController::Base
	before_action :authenticate_user!, :set_user

	#to access current_user everywhere in the app
	def set_user
    	cookies[:username] = current_user.id || 'guest' if user_signed_in?
  	end
end
