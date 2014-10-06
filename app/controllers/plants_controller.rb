class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  # GET /plants
  def index
    @plants = Plant.all
  end

  # GET /plants/1
  def show
  end

  # GET /plants/new
  def new
    @plant = Plant.new
  end

  # GET /plants/1/edit
  def edit
  end

  # POST /plants
  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to @plant, notice: 'Plant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /plants/1
  def update
    if @plant.update(plant_params)
      redirect_to @plant, notice: 'Plant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /plants/1
  def destroy
    @plant.destroy
    redirect_to plants_url, notice: 'Plant was successfully destroyed.'
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
end
