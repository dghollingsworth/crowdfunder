class SessionsController < ApplicationController
  def new

  end

  def create
    login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_back_or_to root_url. :notice => "Logged in"
    else
      flash.now.alert = "email or password was invalid"
      render :new
    end
  end

  def destroy
    logout
    redirect_to projects_path
  end


end
