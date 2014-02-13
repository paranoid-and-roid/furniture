class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to products_path, :notice => "User was successfully created"
    else
      render :action => "new"
    end
  end

  def index
    @users = User.all
  end
end