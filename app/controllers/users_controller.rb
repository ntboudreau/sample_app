class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @title = "sign up"
  end


  
end
