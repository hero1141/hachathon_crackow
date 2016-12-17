class StaticController < ApplicationController
  def index
    @posts = Post.all.limit(10).order('id desc')
    @category = Category.all
  end
end
