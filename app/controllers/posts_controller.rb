class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new

  end

  def create
    @post = Post.new(content: params[:content],name: params[:name],year: params[:year],team: params[:team])
    @post.save
    redirect_to("/posts/index")
  end


end
