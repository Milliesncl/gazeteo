class PagesController < ApplicationController
  def home
    @posts = current_user.posts
    @families = current_user.families
    @members = current_user.families.first.members
  end

  def create_post
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end
end
