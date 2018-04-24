class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def ensure_logged_in
    unless current_user
      flash[:alert] = "Please log in"
      redirect_to new_session_url
    end
  end

  def require_login
    	# Check if session has user_id nil
    	if session[:user_id] == nil
    		# Redirect to root path
    		redirect_to root_path
    	end
    end


    helper_method :current_user


end
