class YearsController < ApplicationController
  before_action :set_year, only: [:edit, :update, :destroy]
  
  def index
    @years = Year.all.order(:name)
  end

  def new
    @year = Year.new
  end

  def edit
  end

  def create
    @year = Year.new(year_params)
    if @year.save
      redirect_to years_path, notice: "year successfully created"
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @year.update(year_params)
      redirect_to years_path, notice: "year successfully updated"
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @year.destroy
    redirect_to :years_path, notice: "year successfully deleted"
  end

  private

  def set_year
    @year = Year.find(params[:id])
  end

  def year_params
    params.require(:year).permit(:name, :current_year)
  end

end