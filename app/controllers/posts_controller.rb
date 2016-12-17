class PostsController < ApplicationController
  def create
    @post = Post.create(user: current_user, category: params[:category_id], description: params[:description])
    redirect_to category_path(params[:category_id])
  end
end
