class ProfileSessionsController < ApplicationController
  before_filter :require_no_profile, :only => [:new, :create]
  before_filter :require_profile, :only => :destroy
  
  def new
    @profile_session = ProfileSession.new
  end
  
  def create
    @profile_session = ProfileSession.new(params[:profile_session])
    if @profile_session.save
      flash[:notice] = "Login successful!"
      redirect_back_or_default account_url
    else
      render :action => :new
    end
  end
  
  def destroy
    current_profile_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_back_or_default new_profile_session_url
  end
end
