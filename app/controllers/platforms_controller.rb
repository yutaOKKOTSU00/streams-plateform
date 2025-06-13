class PlatformsController < ApplicationController
  before_action :set_platform, only: [:show, :edit, :update, :destroy]

  def index
    @platforms = Platform.all.order(:rate)
  end

  def new
    @platform = Platform.new
  end

  def edit
  end

  def create
    @platform = Platform.new(platform_params)

    if @platform.save
      redirect_to @platform, notice: "Platform successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def update
    if @platform.update(platform_params)
      redirect_to @platform, notice: "Platform successfully updated"
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @platform.destroy
      redirect_to platforms_path, notice: "Platform successfully deleted"
    end
  end

  private
  def set_platform
    @platform = Platform.find(params[:id])
  end

  def platform_params
    params.require(:platform).permit(:name, :creation, :description, :rate, :dail_requests)
  end

end
