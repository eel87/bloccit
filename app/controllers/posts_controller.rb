class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def spam
  end

  def show
  end

  def new
  end

  def edit
  end
end
