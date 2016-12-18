class AnswersController < ApplicationController
  def create
    @answer = Answer.create(user_id: current_user.id,  content: params[:answer][:content], post_id: params[:answer][:post_id])
    redirect_to category_post_path(params[:category_id], params[:post_id])
  end

  def destroy
    @answer = Answer.find(params[:id]).destroy
    redirect_to category_post_path(params[:category_id], params[:post_id])
  end

end
