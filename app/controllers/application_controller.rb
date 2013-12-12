class ApplicationController < ActionController::Base
 
  protect_from_forgery

 	rescue_from CanCan::AccessDenied do |exception|
    	
        redirect_to main_app.home_url, :alert => exception.message
  	end 

def after_sign_in_path_for(resource)
	home_path
end

def after_sign_out_path_for(resource)
	respond_to?(:root_path) ? root_path : "/"
end




    
  
end
