class EmployeeManagerAssignmentsController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # GET /employee_manager_assignments
  # GET /employee_manager_assignments.json
  def index
    @employee_manager_assignments = EmployeeManagerAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employee_manager_assignments }
    end
  end

  # GET /employee_manager_assignments/1
  # GET /employee_manager_assignments/1.json
  def show
    @employee_manager_assignment = EmployeeManagerAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee_manager_assignment }
    end
  end

  # GET /employee_manager_assignments/new
  # GET /employee_manager_assignments/new.json
  def new
    @employee_manager_assignment = EmployeeManagerAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee_manager_assignment }
    end
  end

  # GET /employee_manager_assignments/1/edit
  def edit
    @employee_manager_assignment = EmployeeManagerAssignment.find(params[:id])
  end

  # POST /employee_manager_assignments
  # POST /employee_manager_assignments.json
  def create
    @employee_manager_assignment = EmployeeManagerAssignment.new(params[:employee_manager_assignment])

    respond_to do |format|
      if @employee_manager_assignment.save
        format.html { redirect_to @employee_manager_assignment, notice: 'Employee manager assignment was successfully created.' }
        format.json { render json: @employee_manager_assignment, status: :created, location: @employee_manager_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @employee_manager_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employee_manager_assignments/1
  # PUT /employee_manager_assignments/1.json
  def update
    @employee_manager_assignment = EmployeeManagerAssignment.find(params[:id])

    respond_to do |format|
      if @employee_manager_assignment.update_attributes(params[:employee_manager_assignment])
        format.html { redirect_to @employee_manager_assignment, notice: 'Employee manager assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee_manager_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_manager_assignments/1
  # DELETE /employee_manager_assignments/1.json
  def destroy
    @employee_manager_assignment = EmployeeManagerAssignment.find(params[:id])
    @employee_manager_assignment.destroy

    respond_to do |format|
      format.html { redirect_to employee_manager_assignments_url }
      format.json { head :no_content }
    end
  end
end
