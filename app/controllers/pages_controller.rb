class PagesController < ApplicationController
  def home
    @families = current_user.families
    @family_users = FamilyUser.where(family: current_user.families)
    @posts = Post.where(user: @family_users.pluck(:user_id)).by_created_at_desc
    @members = current_user.families.first.members
    @post = Post.new

  end
end
