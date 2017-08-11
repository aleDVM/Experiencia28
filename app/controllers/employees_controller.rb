class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(employee_params)
    respond_to do |format|
    if @employee.save
      format.html { redirect_to @employee.company, notice: 'El empleado fue ingresado.' }

    else
      format.html { render :new }

    end
  end
  end
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
  end
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area, :company_id, :area_id)
  end
end
