class EmployeeTerminalsController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # GET /employee_terminals
  # GET /employee_terminals.json
  def index
    @employee_terminals = EmployeeTerminal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employee_terminals }
    end
  end

  # GET /employee_terminals/1
  # GET /employee_terminals/1.json
  def show
    @employee_terminal = EmployeeTerminal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee_terminal }
    end
  end

  # GET /employee_terminals/new
  # GET /employee_terminals/new.json
  def new
    @employee_terminal = EmployeeTerminal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee_terminal }
    end
  end

  # GET /employee_terminals/1/edit
  def edit
    @employee_terminal = EmployeeTerminal.find(params[:id])
  end

  # POST /employee_terminals
  # POST /employee_terminals.json
  def create
    @employee_terminal = EmployeeTerminal.new(params[:employee_terminal])

    respond_to do |format|
      if @employee_terminal.save
        format.html { redirect_to @employee_terminal, notice: 'Employee terminal was successfully created.' }
        format.json { render json: @employee_terminal, status: :created, location: @employee_terminal }
      else
        format.html { render action: "new" }
        format.json { render json: @employee_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employee_terminals/1
  # PUT /employee_terminals/1.json
  def update
    @employee_terminal = EmployeeTerminal.find(params[:id])

    respond_to do |format|
      if @employee_terminal.update_attributes(params[:employee_terminal])
        format.html { redirect_to @employee_terminal, notice: 'Employee terminal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_terminals/1
  # DELETE /employee_terminals/1.json
  def destroy
    @employee_terminal = EmployeeTerminal.find(params[:id])
    @employee_terminal.destroy

    respond_to do |format|
      format.html { redirect_to employee_terminals_url }
      format.json { head :no_content }
    end
  end
end
