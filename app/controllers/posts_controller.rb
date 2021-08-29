class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
  
  def create(post_params)
    @post = current_user.posts.new
    if @post.save
      redirect_to posts_path, success: "投稿に成功しました"
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new 
    end
    
  end
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :content, :image, :status, :created_user_id)
  end
  
end
