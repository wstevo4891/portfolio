class PagesController < ApplicationController
  before_action :authenticate_admin!, only: :dashboard

  def welcome
  end
  
  def work
  end

  def about
  end

  def blog
  end

  def contact
  end

  def bolt_network
  end

  def baldwin
  end

  def griffen
  end

  def smm
  end

  def suggestion_box
  end

  def dashboard
    @blog_posts = BlogPost.all.order(created_at: :desc)
  end
end
