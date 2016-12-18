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

  def rank
    @users = User.select('users.email', 'users.id', 'users.avatar_file_name', 'users.avatar_content_type','avatar_file_size' , 'users.first_name', 'users.last_name', 'count(points.id) AS suma').joins('LEFT JOIN answers ON answers.user_id = users.id').joins('LEFT JOIN points ON points.answer_id = answers.id').all.order('COUNT(points.id) DESC').group('users.email','users.first_name', 'users.last_name', 'users.avatar_file_name', 'users.avatar_content_type','avatar_file_size', 'users.id').limit(20)
  end

  def table
    @blackboard = Blackboard.new
  end

end
