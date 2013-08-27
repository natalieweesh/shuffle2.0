class UserUploadedsController < ApplicationController
  
  
  def create
    @user_uploaded = UserUploaded.create(params[:user_uploaded])
    respond_to do |format|
      format.json { render :json => @user_uploaded}
    end  
  end
  
end