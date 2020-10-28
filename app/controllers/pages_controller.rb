class PagesController < ApplicationController
  def home
    @posts = current_user.posts.by_created_at_desc
    @families = current_user.families
    @members = current_user.families.first.members
    @post = Post.new
  end
end
