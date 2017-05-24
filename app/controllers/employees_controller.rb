class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all 
  end

  def show
  end

  def new
    @employee = Employee.new
  end
  
  def edit
  end

  def update
    @employee.update(employee_params)
    if @employee.save
      redirect_to employee_path(@employee), message: "Employee updated."
    else
      render :edit, message: "Employee NOT updated, please try again."
    end
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employee_path(@employee), message: "Employee created."
    else
      render :new, message: "Employee NOT created, please try again."
    end
  end

  def destroy
    @employee.delete
    redirect_to employees_path
  end

  private
    def set_employee
      @employee = Employee.find_by_id(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:full_name, :first_name, :last_name, :email, :phone)
    end
end


