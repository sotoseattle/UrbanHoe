class PlantsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_plant, only: [:show, :edit, :update, :destroy, :plant_details]

  def index
    @plants = Plant.all
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def edit
  end

  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to @plant, notice: 'Plant was successfully created.'
    else
      render :new
    end
  end

  def update
    if @plant.update(plant_params)
      redirect_to @plant, notice: 'Plant was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @plant.destroy
    redirect_to plants_url, notice: 'Plant was successfully destroyed.'
  end

  def plant_details
    render partial: 'details'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_plant
    @plant = Plant.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def plant_params
    params.require(:plant).permit(:plant_name, :instructions)
  end

  def user_not_authorized
    flash[:error] = 'You are not authorized to perform this action'
    redirect_to(root_path)
  end
end
