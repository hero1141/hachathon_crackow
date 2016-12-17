class PostsController < ApplicationController
  def index 
    @posts = Post.all
    @user = User.find(params[:user_id])
    @posts = @user.posts
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
