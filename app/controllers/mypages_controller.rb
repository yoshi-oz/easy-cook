class MypagesController < ApplicationController

  def new
  end
  
  def show
    @name = current_user.name
    @posts = current_user.posts
  end

end
