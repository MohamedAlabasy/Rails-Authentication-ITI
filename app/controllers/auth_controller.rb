class AuthController < ApplicationController
  def signup_form
  end

  def signup
    # get data form request
    # validation
    # store data in databas
    user=User.new(params.permit(:name ,:email ,:password_digest))

    user.save
    # redirect
  end

  def signin_form
  end

  def signin
  end
end
