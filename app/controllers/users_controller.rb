class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.assign_attributes(params[:user], :without_protection => true)
    if @user.save
      redirect_to root_url, :notice => "User account created. You may now log in."
    else
      render :new
    end
  end  

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render :json => @user }
    end
  end
end
