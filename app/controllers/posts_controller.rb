class PostsController < ApplicationController
  before_action :set_post,only:[:show]
  def index

    @post= if params[:search]
             Post.where('"title" LIKE ? ',)
             Post.where('"title" LIKE ? or "body" LIKE ?',"%#{params[:search]}%","%#{params[:search]}%").paginate(page: params[:page], per_page: 4)
           else
             Post.paginate(page: params[:page], per_page: 4)
           end

  end

  def show

  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
