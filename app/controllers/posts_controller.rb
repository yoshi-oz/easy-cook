class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def show
    @post = Post.find(params[:id])
  end
  
  private
  def post_params
    params.require(:post).permit(:image, :name, :content).merge(user_id: current_user.id)
  end
end
