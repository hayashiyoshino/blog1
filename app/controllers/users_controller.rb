class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @blogs = user.blogs.all
  end

end
