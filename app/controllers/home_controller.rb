class HomeController < ApplicationController
  def show
    @blog = Blog.last
  end
end
