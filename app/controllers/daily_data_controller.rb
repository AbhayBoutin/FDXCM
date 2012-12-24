class DailyDataController < ApplicationController  
  # GET /daily_data
  # GET /daily_data.json
  def index
    @daily_data = DailyDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_data }
    end
  end

  # GET /daily_data/1
  # GET /daily_data/1.json
  def show
    @daily_datum = DailyDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_datum }
    end
  end

  # GET /daily_data/new
  # GET /daily_data/new.json
  def new
    @daily_datum = DailyDatum.new
    
    currentBusiness = current_user.thisUsersBusiness
    currentBusinessEmployees = currentBusiness.employees
    @daily_datum = currentBusinessEmployees

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @daily_datum }
    end
  end

  # GET /daily_data/1/edit
  def edit
    @daily_datum = DailyDatum.find(params[:id])
  end

  # POST /daily_data
  # POST /daily_data.json
  def create
    @daily_datum = DailyDatum.new(params[:daily_datum])

    respond_to do |format|
      if @daily_datum.save
        format.html { redirect_to @daily_datum, notice: 'Daily datum was successfully created.' }
        format.json { render json: @daily_datum, status: :created, location: @daily_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_data/1
  # PUT /daily_data/1.json
  def update
    @daily_datum = DailyDatum.find(params[:id])

    respond_to do |format|
      if @daily_datum.update_attributes(params[:daily_datum])
        format.html { redirect_to @daily_datum, notice: 'Daily datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_data/1
  # DELETE /daily_data/1.json
  def destroy
    @daily_datum = DailyDatum.find(params[:id])
    @daily_datum.destroy

    respond_to do |format|
      format.html { redirect_to daily_data_url }
      format.json { head :no_content }
    end
  end
end
