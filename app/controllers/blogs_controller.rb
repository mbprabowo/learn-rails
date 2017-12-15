class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:blogs].inspect
    @blog = Blog.new(blog_params)

    @blog.save
    redirect_to @blog
  end

  private
    def blog_params
      params.require(:blogs).permit(:title, :content)
    end
end
