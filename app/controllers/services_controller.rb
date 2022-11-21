class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
  end

  def edit

  end


  def updated
  end

  def destroy
  end

  private

  def service_params
    params.required(:service).permit(:title, :description, :category, :price )
  end


end
