class PostsController < ApplicationController
  before_action :unauthenticate_user 

  def index
  end
end
