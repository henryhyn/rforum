class Frontend::ForumsController < ApplicationController
  def index
    @forums = Forum.root.descendants
  end
end