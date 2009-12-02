class SfRecordTypesController < ApplicationController
  def index
    @sf_record_types = SfRecordType.all
  end
  
  def show
    @sf_record_type = SfRecordType.find(params[:id])
  end
  
  def new
    @sf_record_type = SfRecordType.new
  end
  
  def create
    @sf_record_type = SfRecordType.new(params[:sf_record_type])
    if @sf_record_type.save
      flash[:notice] = "Successfully created sf record type."
      redirect_to @sf_record_type
    else
      render :action => 'new'
    end
  end
  
  def edit
    @sf_record_type = SfRecordType.find(params[:id])
  end
  
  def update
    @sf_record_type = SfRecordType.find(params[:id])
    if @sf_record_type.update_attributes(params[:sf_record_type])
      flash[:notice] = "Successfully updated sf record type."
      redirect_to @sf_record_type
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @sf_record_type = SfRecordType.find(params[:id])
    @sf_record_type.destroy
    flash[:notice] = "Successfully destroyed sf record type."
    redirect_to sf_record_types_url
  end
end
