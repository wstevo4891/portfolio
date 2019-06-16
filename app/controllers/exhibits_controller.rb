# app/controllers/exhibits_controller.rb

# Public Controller for exhibits API
class ExhibitsController < ApplicationController  
  # GET /exhibits
  def index
    @exhibits = Exhibit.all

    render json: @exhibits, status: :ok
  end

  # GET /exhibits/Ruby
  def show
    @exhibit = Exhibit.find_by(title: params[:title])

    render json: @exhibit, status: :ok
  end
end  
