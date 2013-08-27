class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @song = Song.get_random(current_user)
    @user = current_user
  end
end
