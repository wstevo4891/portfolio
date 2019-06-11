class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/:slug
  # GET /projects/:slug.json
  def show
    @project = Project.find(params[:slug])
  end
end
