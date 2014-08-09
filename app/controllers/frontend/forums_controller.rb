class Frontend::ForumsController < ApplicationController
  before_filter :find_forum, only: [:show]

  def index
    @forums = Forum.root.descendants
  end

  def show
    @topics = @forum.topics
  end

  private

  def find_forum
    @forum = Forum.find(params[:id])
  end
end