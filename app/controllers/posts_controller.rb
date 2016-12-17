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
    @post = Post.create(user: current_user, category: params[:category_id], description: params[:description])
    redirect_to category_path(params[:category_id])
  end
  
end
