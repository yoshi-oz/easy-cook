class FormsController < ApplicationController

  def new
    @posts = Post.new
  end
  
end
