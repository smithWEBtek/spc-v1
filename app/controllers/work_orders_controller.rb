class WorkOrdersController < ApplicationController
  before_action :set_work_order, only: [:show, :edit, :update, :destroy]

  def index
    @work_orders = WorkOrder.all 
  end

  def show
    @work_orders = WorkOrder.all
  end

  def new
    @work_order = WorkOrder.new
  end
  
  def edit
  end

  def update
    @work_order.update(work_order_params)
    if @work_order.save
      redirect_to work_order_path(@work_order), message: "WorkOrder updated."
    else
      render :edit, message: "WorkOrder NOT updated, please try again."
    end
  end

  def create
    @work_order = WorkOrder.new(work_order_params)
    if @work_order.save
      redirect_to work_order_path(@work_order), message: "WorkOrder created."
    else
      render :new, message: "WorkOrder NOT created, please try again."
    end
  end

  def destroy
    @work_order.delete
    redirect_to work_orders_path
  end

  private
    def set_work_order
      @work_order = WorkOrder.find_by_id(params[:id])
    end

    def work_order_params
      params.require(:work_order).permit(:scheduled_service_call_date, :customer_complaint, :customer_id, :pool_id, :inventory_req, :work_order_type, :duration_est)      
    end
end

