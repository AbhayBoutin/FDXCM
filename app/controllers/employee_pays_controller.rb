class EmployeePaysController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # GET /employee_pays
  # GET /employee_pays.json
  def index
    @employee_pays = EmployeePay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employee_pays }
    end
  end

  # GET /employee_pays/1
  # GET /employee_pays/1.json
  def show
    @employee_pay = EmployeePay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee_pay }
    end
  end

  # GET /employee_pays/new
  # GET /employee_pays/new.json
  def new
    @employee_pay = EmployeePay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee_pay }
    end
  end

  # GET /employee_pays/1/edit
  def edit
    @employee_pay = EmployeePay.find(params[:id])
  end

  # POST /employee_pays
  # POST /employee_pays.json
  def create
    @employee_pay = EmployeePay.new(params[:employee_pay])

    respond_to do |format|
      if @employee_pay.save
        format.html { redirect_to @employee_pay, notice: 'Employee pay was successfully created.' }
        format.json { render json: @employee_pay, status: :created, location: @employee_pay }
      else
        format.html { render action: "new" }
        format.json { render json: @employee_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employee_pays/1
  # PUT /employee_pays/1.json
  def update
    @employee_pay = EmployeePay.find(params[:id])

    respond_to do |format|
      if @employee_pay.update_attributes(params[:employee_pay])
        format.html { redirect_to @employee_pay, notice: 'Employee pay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_pays/1
  # DELETE /employee_pays/1.json
  def destroy
    @employee_pay = EmployeePay.find(params[:id])
    @employee_pay.destroy

    respond_to do |format|
      format.html { redirect_to employee_pays_url }
      format.json { head :no_content }
    end
  end
end
