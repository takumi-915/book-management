class PostsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show, :search]
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def search
    @post = Post.search(params[:keyword])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :review, :content, :image)
  end

end
