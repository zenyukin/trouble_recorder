class PostManagersController < ApplicationController
  def new
   @post_manager = Post_manager.new
  end
  
  def create
    @post_manager = Post_manager.new
    @post_manager.user_id = current_user.id
    @post_manager.post_id = params[:post_id]
    if @post_manager.save
      redirect_to posts_path
    end
  end
end
