# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
  helper :all # include all helpers, all the time
  helper_method :current_profile_session, :current_profile
  filter_parameter_logging :password, :password_confirmation

  private
    def current_profile_session
      return @current_profile_session if defined?(@current_profile_session)
      @current_profile_session = ProfileSession.find
    end

    def current_profile
      return @current_profile if defined?(@current_profile)
      @current_profile = current_profile_session && current_profile_session.profile
    end

    def require_profile
      unless current_profile
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to new_profile_session_url
        return false
      end
    end

    def require_no_profile
      if current_profile
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to account_url
        return false
      end
    end

    def store_location
      session[:return_to] = request.request_uri
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
end
