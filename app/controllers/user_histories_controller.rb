class UserHistoriesController < ApplicationController
  
  def create
    @user_history = UserHistory.create(params[:user_history])
    respond_to do |format|
      format.json { render :json => @user_history}
    end
    
    
  end
  
end