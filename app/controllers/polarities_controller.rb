class PolaritiesController < ApplicationController
  
  def create
    @polarity = Polarity.create(params[:polarity])
    respond_to do |format|
      format.json { render :json => @polarity}
    end
    
    
  end
  
end