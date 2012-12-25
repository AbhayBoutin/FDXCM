class VehicleOdometersController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # GET /vehicle_odometers
  # GET /vehicle_odometers.json
  def index
    @vehicle_odometers = VehicleOdometer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicle_odometers }
    end
  end

  # GET /vehicle_odometers/1
  # GET /vehicle_odometers/1.json
  def show
    @vehicle_odometer = VehicleOdometer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vehicle_odometer }
    end
  end

  # GET /vehicle_odometers/new
  # GET /vehicle_odometers/new.json
  def new
    @vehicle_odometer = VehicleOdometer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vehicle_odometer }
    end
  end

  # GET /vehicle_odometers/1/edit
  def edit
    @vehicle_odometer = VehicleOdometer.find(params[:id])
  end

  # POST /vehicle_odometers
  # POST /vehicle_odometers.json
  def create
    @vehicle_odometer = VehicleOdometer.new(params[:vehicle_odometer])

    respond_to do |format|
      if @vehicle_odometer.save
        format.html { redirect_to @vehicle_odometer, notice: 'Vehicle odometer was successfully created.' }
        format.json { render json: @vehicle_odometer, status: :created, location: @vehicle_odometer }
      else
        format.html { render action: "new" }
        format.json { render json: @vehicle_odometer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_odometers/1
  # PUT /vehicle_odometers/1.json
  def update
    @vehicle_odometer = VehicleOdometer.find(params[:id])

    respond_to do |format|
      if @vehicle_odometer.update_attributes(params[:vehicle_odometer])
        format.html { redirect_to @vehicle_odometer, notice: 'Vehicle odometer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vehicle_odometer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_odometers/1
  # DELETE /vehicle_odometers/1.json
  def destroy
    @vehicle_odometer = VehicleOdometer.find(params[:id])
    @vehicle_odometer.destroy

    respond_to do |format|
      format.html { redirect_to vehicle_odometers_url }
      format.json { head :no_content }
    end
  end
end
