class ProfilesController < ApplicationController
  before_filter :require_no_profile, :only => [:new, :create]
  before_filter :require_profile, :only => [:show, :edit, :update]
  
  allow :index, :user => :is_admin?
 
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end
  
  def create
    @profile = Profile.new(params[:profile])
    if @profile.save
      flash[:notice] = "Account registered!"
      redirect_back_or_default account_url
    else
      render :action => :new
    end
  end
  
  def show
    @profile = @current_profile
  end
 
  def edit
    @profile = @current_profile
  end
  
  def update  
    @profile = @current_profile # makes our views "cleaner" and more consistent
    if allow? :user => :is_admin?
      if @profile.update_attributes(params[:profile])
        flash[:notice] = "Account updated!"
        redirect_to account_url
      else
        render :action => :edit
      end
    else
      flash[:notice] = "Failure! You must be an admin to edit profiles!"
      render :action => :edit
    end
  end



end
