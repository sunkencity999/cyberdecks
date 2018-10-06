class WelcomeController < ApplicationController
  def index
  end

  def blog
	  @posts = Post.all
  end

  def builds
  end

  def contact
  end
end
