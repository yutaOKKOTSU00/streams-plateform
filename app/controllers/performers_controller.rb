class PerformersController < ApplicationController
  before_action :set_performer, only: [:show, :edit, :update, :destroy]

  def index
    @performers = Performer.all.order(:firstname)
  end

  def new
    @performer = Performer.new
  end

  def show
  end

  def edit
  end

  def create
    performer = Performer.new(performer_params)
    if performer.save
      redirect_to performer, notice: "Performer successfuly created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @performer.update(performer_params)
      redirect_to @performer, notice: "performer successfuly updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @performer.destroy
    redirect_to performer_path, notice: "performer successfully deleted"
  end

  private 
  def set_performer
    @performer = Performer.find(params[:id])
  end 

  def performer_params
    params.require(:performer).permit(:firstname, :lastname, :nationality, :birth, :statut, :rate, :awards, :platforms, :description)
  end

end
