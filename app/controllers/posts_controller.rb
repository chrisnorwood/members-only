class PostsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post         = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      flash[:success] = "Post created."
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

    def post_params
      params.require(:post).permit(:body)
    end

    def require_login
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to root_url
      end
    end
end