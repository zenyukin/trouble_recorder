class PostManagersController < ApplicationController
  def create
   @post_manager = Post_manager.new
   @post_manager.user_id = current_user.id
   @post_manager.post_id = params[:post_id]
  end
end
