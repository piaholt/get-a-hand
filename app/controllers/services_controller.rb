class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  def index
    @services = Service.all
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
  end

  def edit
    # @user = current_user
  end

  def updates
    @service.update(service_params)

    redirect_to service_path(@service)
  end

  def destroy
    @service.destroy

    redirect_to services_path, status: :see_other
  end

  private

  def service_params
    params.required(:service).permit(:title, :description, :category, :price, :photo)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
