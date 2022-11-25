class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index


  def index
    if params[:query].present?
      @services = Service.search_by_title_and_etc(params[:query])
    else
      @services = Service.all
      categories = @services.pluck(:category).uniq
      @services = []
      categories.each do |category|
        @services << Service.find_by(category: category)
      end
    end
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user

    if @service.save
      redirect_to my_services_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_services
    @services = Service.all
    @user = current_user
  end

  def edit
  end

  def update
    @service.update(service_params)
    redirect_to service_path(@service)
  end

  def destroy
    @service.destroy
    redirect_to my_services_path, status: :see_other
  end

  def categories
    if params[:query].present?
      @services = Service.search_by_title_and_etc("#{params[:query]} #{params[:category]}")
    else
      @services = Service.where(category: params[:category])
    end
  end

  private

  def service_params
    params.required(:service).permit(:title, :description, :category, :price, :photo)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
