class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/:slug
  # GET /projects/:slug.json
  def show
    @project = Project.find_by(slug: params[:slug])

    respond_to do |format|
      format.html { render :show, status: :ok }
      format.json { render json: @project, status: :ok }
      format.text { render plain: @project.pretty_print }
    end
  end
end
