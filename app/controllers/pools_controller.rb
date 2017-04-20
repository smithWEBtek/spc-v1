class PoolsController < ApplicationController
  before_action :set_pool, only: [:show, :edit, :update, :destroy]

  def index
    @pools = Pool.all 
  end

  def show
    @pools = Pool.all
  end

  def new
    @pool = Pool.new
  end
  
  def edit
  end

  def update
    @pool.update(pool_params)
    if @pool.save
      redirect_to pool_path(@pool), message: "Pool updated."
    else
      render :edit, message: "Pool NOT updated, please try again."
    end
  end

  def create
    @pool = Pool.new(pool_params)
    if @pool.save
      redirect_to pool_path(@pool), message: "Pool created."
    else
      render :new, message: "Pool NOT created, please try again."
    end
  end

  def destroy
    @pool.delete
    redirect_to pools_path
  end

  private
    def set_pool
      @pool = Pool.find_by_id(params[:id])
    end

    def pool_params
      params.require(:pool).permit(:our_pool, :our_install_date, :pool_type, :pool_mfg, :pool_model, :pool_finish, :pool_size, :filter_type, :filter_mfg, :filter_model, :pump_type, :pump_mfg, :pump_model, :heater_type, :heater_mfg, :heater_model, :winter_cover_type, :service_history)      
    end
end



