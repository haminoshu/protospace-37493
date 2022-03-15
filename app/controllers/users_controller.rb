class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @avatars = @user.avatars
    
  end

end
