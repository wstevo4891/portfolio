# app/controllers/exhibits_controller.rb

# Public Controller for exhibits API
class ExhibitsController < ApplicationController
  # GET /exhibits
  def index
    @exhibits = Exhibit.all

    render json: @exhibits, status: :ok
  end

  # GET /exhibits/Ruby
  # GET /exhibits/Ruby.json
  def show
    @exhibit = Exhibit.find_by(slug: params[:slug])

    respond_to do |format|
      format.html { render partial: 'exhibit_code', status: :ok }
      format.json { render json: @exhibit, status: :ok }
    end
  end
end
