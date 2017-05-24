class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all 
  end

  def show
	end

  def new
    @customer = Customer.new
  end
  
  def edit
  end

  def update
    @customer.update(customer_params)
    if @customer.save
      redirect_to customer_path(@customer), message: "Customer updated."
    else
      render :edit, message: "Customer NOT updated, please try again."
    end
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customer_path(@customer), message: "Customer created."
    else
      render :new, message: "Customer NOT created, please try again."
    end
  end

  def destroy
    @customer.delete
    redirect_to customers_path
  end

  private
    def set_customer
      @customer = Customer.find_by_id(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:full_name1, :first_name1, :last_name1, :full_name2, :first_name2, :last_name2, :address, :city, :state, :zip, :phone1, :phone2, :email1, :email2, :about, :history)
    end
end

