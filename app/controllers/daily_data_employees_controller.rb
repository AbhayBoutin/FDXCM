class DailyDataEmployeesController < ApplicationController
  # GET /daily_data_employees
  # GET /daily_data_employees.json
  def index
    @daily_data_employees = DailyDataEmployee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_data_employees }
    end
  end

  # GET /daily_data_employees/1
  # GET /daily_data_employees/1.json
  def show
    @daily_data_employee = DailyDataEmployee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_data_employee }
    end
  end

  # GET /daily_data_employees/new
  # GET /daily_data_employees/new.json
  def new
    @daily_data_employee = DailyDataEmployee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_data_employee }
    end
  end

  # GET /daily_data_employees/1/edit
  def edit
    @daily_data_employee = DailyDataEmployee.find(params[:id])
  end

  # POST /daily_data_employees
  # POST /daily_data_employees.json
  def create
    @daily_data_employee = DailyDataEmployee.new(params[:daily_data_employee])

    respond_to do |format|
      if @daily_data_employee.save
        format.html { redirect_to @daily_data_employee, notice: 'Daily data employee was successfully created.' }
        format.json { render json: @daily_data_employee, status: :created, location: @daily_data_employee }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_data_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_data_employees/1
  # PUT /daily_data_employees/1.json
  def update
    @daily_data_employee = DailyDataEmployee.find(params[:id])

    respond_to do |format|
      if @daily_data_employee.update_attributes(params[:daily_data_employee])
        format.html { redirect_to @daily_data_employee, notice: 'Daily data employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_data_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_data_employees/1
  # DELETE /daily_data_employees/1.json
  def destroy
    @daily_data_employee = DailyDataEmployee.find(params[:id])
    @daily_data_employee.destroy

    respond_to do |format|
      format.html { redirect_to daily_data_employees_url }
      format.json { head :no_content }
    end
  end
end
