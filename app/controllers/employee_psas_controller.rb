class EmployeePsasController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # GET /employee_psas
  # GET /employee_psas.json
  def index
    @employee_psas = EmployeePsa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employee_psas }
    end
  end

  # GET /employee_psas/1
  # GET /employee_psas/1.json
  def show
    @employee_psa = EmployeePsa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee_psa }
    end
  end

  # GET /employee_psas/new
  # GET /employee_psas/new.json
  def new
    @employee_psa = EmployeePsa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee_psa }
    end
  end

  # GET /employee_psas/1/edit
  def edit
    @employee_psa = EmployeePsa.find(params[:id])
  end

  # POST /employee_psas
  # POST /employee_psas.json
  def create
    @employee_psa = EmployeePsa.new(params[:employee_psa])

    respond_to do |format|
      if @employee_psa.save
        format.html { redirect_to @employee_psa, notice: 'Employee psa was successfully created.' }
        format.json { render json: @employee_psa, status: :created, location: @employee_psa }
      else
        format.html { render action: "new" }
        format.json { render json: @employee_psa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employee_psas/1
  # PUT /employee_psas/1.json
  def update
    @employee_psa = EmployeePsa.find(params[:id])

    respond_to do |format|
      if @employee_psa.update_attributes(params[:employee_psa])
        format.html { redirect_to @employee_psa, notice: 'Employee psa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee_psa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_psas/1
  # DELETE /employee_psas/1.json
  def destroy
    @employee_psa = EmployeePsa.find(params[:id])
    @employee_psa.destroy

    respond_to do |format|
      format.html { redirect_to employee_psas_url }
      format.json { head :no_content }
    end
  end
end
