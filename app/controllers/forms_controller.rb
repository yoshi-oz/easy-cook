class FormsController < ApplicationController

  def new
    @posts = Post.new
  end

  def create
    Post.create(post_params)
  end
  
  private
  def post_params
    params.require(:post).permit(:content, :image).merge(user_id: current_user.id)
  end
  
end
