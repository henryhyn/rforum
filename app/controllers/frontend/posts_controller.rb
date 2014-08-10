class Frontend::PostsController < ApplicationController
  before_filter :find_post, only: [:destroy]

  def create
    Post.create(post_params)
    redirect_to frontend_topic_path(post_params[:topic_id])
  end

  def destroy
    topic_id = @post.topic_id
    @post.destroy
    redirect_to frontend_topic_path(topic_id)
  end

  private

  def post_params
    params.require(:post).permit(:topic_id, :message)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end