class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]

  def index
    @inventories = Inventory.all 
  end

  def show
  end

  def new
    @inventory = Inventory.new
  end
  
  def edit
  end

  def update
    @inventory.update(inventory_params)
    if @inventory.save
      redirect_to inventory_path(@inventory), message: "Inventory updated."
    else
      render :edit, message: "Inventory NOT updated, please try again."
    end
  end

  def create
    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      redirect_to inventory_path(@inventory), message: "Inventory created."
    else
      render :new, message: "Inventory NOT created, please try again."
    end
  end

  def destroy
    @inventory.delete
    redirect_to inventories_path
  end

  private
    def set_inventory
      @inventory = Inventory.find_by_id(params[:id])
    end

    def inventory_params
      params.require(:inventory).permit(:sku, :name, :mfg, :type, :model, :size, :color, :category, :sub_category, :qty, :location)
    end
end



