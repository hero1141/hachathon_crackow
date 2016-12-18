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
    @category = Category.find(params[:category_id])
    @post = Post.find(params[:id])
    @answer = Answer.new
    @answers = @post.answers
  end

  def create
    @post = Post.create(user: current_user, category_id: params[:post][:id], description: params[:post][:description], title: params[:post][:title])
    redirect_to category_path(params[:post][:id])
  end
  
end
