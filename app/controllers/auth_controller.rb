class AuthController < ApplicationController
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
  end

  def signin
    user =User.find_by(email: params[:email])
    if user && user.authenticate(params[:password_digest])
      session[:user]=user
      return  redirect_to root_path
    redirect_back fallback_location: login_path
    end
  end
end
