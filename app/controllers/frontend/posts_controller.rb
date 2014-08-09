class Frontend::PostsController < ApplicationController
  def create
    Post.create(post_params)
    redirect_to frontend_topic_path(post_params[:topic_id])
  end

  private

  def post_params
    params.require(:post).permit(:topic_id, :message)
  end
end