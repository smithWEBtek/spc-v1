class TrucksController < ApplicationController
  before_action :set_truck, only: [:show, :edit, :update, :destroy]

  def index
    @trucks = Truck.all 
  end

  def show
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end
  
  def edit
  end

  def update
    @truck.update(truck_params)
    if @truck.save
      redirect_to truck_path(@truck), message: "Truck updated."
    else
      render :edit, message: "Truck NOT updated, please try again."
    end
  end

  def create
    @truck = Truck.new(truck_params)
    if @truck.save
      redirect_to truck_path(@truck), message: "Truck created."
    else
      render :new, message: "Truck NOT created, please try again."
    end
  end

  def destroy
    @truck.delete
    redirect_to trucks_path
  end

  private
    def set_truck
      @truck = Truck.find_by_id(params[:id])
    end

    def truck_params
      params.require(:truck).permit(:name, :make, :model, :year, :equipment)      
    end
end




