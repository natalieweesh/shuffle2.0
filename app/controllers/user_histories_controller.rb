class UserHistoriesController < ApplicationController
  
  def create
    @user_history = UserHistory.create(params[:user_history])
    respond_to do |format|
      format.json { render :json => @user_history}
    end
  end

  def index
    @user_histories = Song.joins(:user_histories).where('user_id = ?', current_user.id).pluck("title")
    respond_to do |format|
      format.json {render :json => @user_histories}
    end
  end
  
end