class PagesController < ApplicationController
  def home
    @posts = current_user.posts
  end
end
