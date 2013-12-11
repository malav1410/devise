class ApplicationController < ActionController::Base
  

def after_sign_in_path_for(resource)
	home_path
end

def after_sign_out_path_for(resource)
	respond_to?(:root_path) ? root_path : "/"
end




    protect_from_forgery
  
end
