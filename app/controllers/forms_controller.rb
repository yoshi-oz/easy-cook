class FormsController < ApplicationController

  def new
    @post = Post.new
  end
  
end
