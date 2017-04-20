class ServiceCallsController < ApplicationController
  before_action :set_service_call, only: [:show, :edit, :update, :destroy]

  def index
    @service_calls = ServiceCall.all 
  end

  def show
    @service_calls = ServiceCall.all
  end

  def new
    @service_call = ServiceCall.new
  end
  
  def edit
  end

  def update
    @service_call.update(service_call_params)
    if @service_call.save
      redirect_to service_call_path(@service_call), message: "ServiceCall updated."
    else
      render :edit, message: "ServiceCall NOT updated, please try again."
    end
  end

  def create
    @service_call = ServiceCall.new(service_call_params)
    if @service_call.save
      redirect_to service_call_path(@service_call), message: "ServiceCall created."
    else
      render :new, message: "ServiceCall NOT created, please try again."
    end
  end

  def destroy
    @service_call.delete
    redirect_to service_calls_path
  end

  private
    def set_service_call
      @service_call = ServiceCall.find_by_id(params[:id])
    end

    def service_call_params
      params.require(:service_call).permit(:scheduled_service_call_date, :start_time_est, :start_time_act, :end_time_est, :end_time_act, :customer_id, :work_order_id, :truck_id)      
    end
end




