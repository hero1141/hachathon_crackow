class StaticController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def index
    @posts = Post.all.limit(10).order('id desc')
    @category = Category.all
  end

  def show
    @user = User.find(params[:id])
  end

  def userposts
    @user = User.find(params[:id])
    @posts = @user.posts
  end



end
