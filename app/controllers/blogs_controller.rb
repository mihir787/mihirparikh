class BlogsController < ApplicationController

  def new
    if current_user
      @blog = Blog.new
    else
      redirect_to root_path
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def index
    @blogs = Blog.all
  end

  def edit
    if current_user
      @blog = Blog.find(params[:id])
    end
  end

  def create
    if current_user
      @blog = Blog.new(blog_params)
      @blog.save
      redirect_to blog_path(@blog)
    end
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blog_path(@blog)
    else
      render :edit
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end

end
