class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_perameter_sanitizer.permit(:sign_up, keys: [:fullname]) 	
		devise_perameter_sanitizer.permit(:account_update, keys: [:fullname]) 	
	end 
end
