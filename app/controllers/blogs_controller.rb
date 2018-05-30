class BlogsController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @blogs = Blog.all.order("id DESC")
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(create_params)
    redirect_to action: :index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def create_params
    params.require(:blog).permit(:title, :text).merge(user_id: current_user.id)
  end


end
