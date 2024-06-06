class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all
  end

  def new

  end

  def create
    # binding.byebug  # 或者 binding.byebug
    Post.create(content: params[:content])
  end
end
