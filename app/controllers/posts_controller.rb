class PostsController < ApplicationController
  def index
    @post = Post.paginate(page: params[:page], per_page: 1)
  end
end
