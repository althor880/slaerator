class PasswordResetsController < ApplicationController

  before_filter :load_profile_using_perishable_token, :only => [:edit, :update]
  before_filter :require_no_profile

  def new
    render
  end

  def create
    @profile = Profile.find_by_email(params[:email])
    if @profile
      @profile.deliver_password_reset_instructions!
      flash[:notice] = "Instructions to reset your password have been emailed to you. " + "Please check your email."
      redirect_to new_profile_session_path
    else
      flash[:notice] = "No user was found with that email address"
      render :action => :new
    end
  end

  def edit
    render
  end

  def update
    @profile.password = params[:profile][:password]
    @profile.password_confirmation = params[:profile][:profile_confirmation]
    if @profile.save
      flash[:notice] = "Password successfully updated"
      redirect_to account_url
    else
      render :action => :edit
    end
  end

  private
    def load_profile_using_perishable_token
      @profile = Profile.find_using_perishable_token(params[:id])
      unless @profile
        flash[:notice] = "We're sorry, but we could not locate your account." + "If you are having issues try copying and pasting the URL " + "from your email into your browser or restarting the " + "reset password process."
        redirect_to new_password_reset_path
      end
    end

end
