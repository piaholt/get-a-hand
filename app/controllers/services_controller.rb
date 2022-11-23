class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index


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
    @service.user = current_user
    @service.save
    redirect_to user_path(current_user)
  end

  def my_services
    @services = Service.all
    @user = current_user
  end

  def edit
    # @user = current_user
  end

  def update
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
