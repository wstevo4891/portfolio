class HomeController < ApplicationController
  def index
    @projects = Project.take(2)
  end
end
