class FormsController < ApplicationController

  def new
    @posts = Post.new
  end

  def create
    Post.create(post_params)
  end
  
end
