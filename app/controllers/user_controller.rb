class UserController < ApplicationController
  def index
  
  end

  def signup
    begin
      user = User.signup(params[:register])
      render :json => {:success => 'Signup Success, please check your email for further info'}
    rescue Exception => e
      render :json => {:error => e.message}, :status => 400
    end
    
  end

  def signin
    begin
       u = User.signin(params[:email], params[:password])
      session[:user_current] = u.id  if u != nil
     
      redirect_to '/app'
    rescue Exception => e
      raise e
    end
    
  end

  def signout
  end

  def account
  end
end
