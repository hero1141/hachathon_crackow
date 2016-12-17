class PostsController < ApplicationController
  def index 
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show

  end

  def create
    @post = Post.create(user: current_user, category_id: params[:post][:id], description: params[:post][:description])
    redirect_to category_path(params[:post][:id])
  end
  
end
