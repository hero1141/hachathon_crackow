class PointsController < ApplicationController

  before_action :authenticate_user!

  def new
    @czy_istnieje_like = Point.where(user_id: current_user.id, answer_id:params[:answer_id])

    if @czy_istnieje_like.count == 0
      @point = Point.create(user_id: current_user.id, answer_id: params[:answer_id])
    end

    redirect_to category_post_path(params[:category_id], params[:post_id])
  end

  def destroy
    @point = Point.find(params[:id]).destroy
    redirect_to category_post_path(params[:category_id], params[:post_id])
  end



end
