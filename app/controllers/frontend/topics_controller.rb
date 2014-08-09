class Frontend::TopicsController < ApplicationController
  before_filter :find_topic, only: [:show]

  def show
    @posts = @topic.posts
  end

  private

  def find_topic
    @topic = Topic.find(params[:id])
  end
end