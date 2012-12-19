class DailyDataVehiclesController < ApplicationController
  # GET /daily_data_vehicles
  # GET /daily_data_vehicles.json
  def index
    @daily_data_vehicles = DailyDataVehicle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_data_vehicles }
    end
  end

  # GET /daily_data_vehicles/1
  # GET /daily_data_vehicles/1.json
  def show
    @daily_data_vehicle = DailyDataVehicle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_data_vehicle }
    end
  end

  # GET /daily_data_vehicles/new
  # GET /daily_data_vehicles/new.json
  def new
    @daily_data_vehicle = DailyDataVehicle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_data_vehicle }
    end
  end

  # GET /daily_data_vehicles/1/edit
  def edit
    @daily_data_vehicle = DailyDataVehicle.find(params[:id])
  end

  # POST /daily_data_vehicles
  # POST /daily_data_vehicles.json
  def create
    @daily_data_vehicle = DailyDataVehicle.new(params[:daily_data_vehicle])

    respond_to do |format|
      if @daily_data_vehicle.save
        format.html { redirect_to @daily_data_vehicle, notice: 'Daily data vehicle was successfully created.' }
        format.json { render json: @daily_data_vehicle, status: :created, location: @daily_data_vehicle }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_data_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_data_vehicles/1
  # PUT /daily_data_vehicles/1.json
  def update
    @daily_data_vehicle = DailyDataVehicle.find(params[:id])

    respond_to do |format|
      if @daily_data_vehicle.update_attributes(params[:daily_data_vehicle])
        format.html { redirect_to @daily_data_vehicle, notice: 'Daily data vehicle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_data_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_data_vehicles/1
  # DELETE /daily_data_vehicles/1.json
  def destroy
    @daily_data_vehicle = DailyDataVehicle.find(params[:id])
    @daily_data_vehicle.destroy

    respond_to do |format|
      format.html { redirect_to daily_data_vehicles_url }
      format.json { head :no_content }
    end
  end
end
