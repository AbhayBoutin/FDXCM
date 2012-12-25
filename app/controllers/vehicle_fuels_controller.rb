class VehicleFuelsController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # GET /vehicle_fuels
  # GET /vehicle_fuels.json
  def index
    @vehicle_fuels = VehicleFuel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicle_fuels }
    end
  end

  # GET /vehicle_fuels/1
  # GET /vehicle_fuels/1.json
  def show
    @vehicle_fuel = VehicleFuel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vehicle_fuel }
    end
  end

  # GET /vehicle_fuels/new
  # GET /vehicle_fuels/new.json
  def new
    @vehicle_fuel = VehicleFuel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vehicle_fuel }
    end
  end

  # GET /vehicle_fuels/1/edit
  def edit
    @vehicle_fuel = VehicleFuel.find(params[:id])
  end

  # POST /vehicle_fuels
  # POST /vehicle_fuels.json
  def create
    @vehicle_fuel = VehicleFuel.new(params[:vehicle_fuel])

    respond_to do |format|
      if @vehicle_fuel.save
        format.html { redirect_to @vehicle_fuel, notice: 'Vehicle fuel was successfully created.' }
        format.json { render json: @vehicle_fuel, status: :created, location: @vehicle_fuel }
      else
        format.html { render action: "new" }
        format.json { render json: @vehicle_fuel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_fuels/1
  # PUT /vehicle_fuels/1.json
  def update
    @vehicle_fuel = VehicleFuel.find(params[:id])

    respond_to do |format|
      if @vehicle_fuel.update_attributes(params[:vehicle_fuel])
        format.html { redirect_to @vehicle_fuel, notice: 'Vehicle fuel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vehicle_fuel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_fuels/1
  # DELETE /vehicle_fuels/1.json
  def destroy
    @vehicle_fuel = VehicleFuel.find(params[:id])
    @vehicle_fuel.destroy

    respond_to do |format|
      format.html { redirect_to vehicle_fuels_url }
      format.json { head :no_content }
    end
  end
end
