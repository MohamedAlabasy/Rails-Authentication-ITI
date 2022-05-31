class AuthController < ApplicationController
  before_action :authenticate_user ,except: [:logout]

  def signup_form
  end

  def signup
    # get data form request
    
    # validation

    # store data in databas
    user=User.new(params.permit(:name ,:email ,:password_digest))
    user.save
    return redirect_to root_path if user.save
    redirect_back fallback_location: registration_path
    # redirect
  end

  def signin_form
    # authenticate_user
  end

  def logout
    session[:user]=nil
    redirect_to login_path
  end

  def signin
    user =User.find_by(email: params[:email])
    if user && #user.authenticate(params[:password_digest])
      session[:user]=user
      return  redirect_to root_path
    end
    redirect_back fallback_location: login_path
  end
end
