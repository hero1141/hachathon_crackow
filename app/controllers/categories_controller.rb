class CategoriesController < ApplicationController

  before_action :authenticate_user!
  def index
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(name: params[:name])
    if @category.save
      redirect_to categories_path
    else
      render 'index'
    end
  end

  def destroy
    Category.find(params[:id]).destroy
    redirect_to categories_path
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts.order('id DESC')
    @post = Post.new
  end
end
