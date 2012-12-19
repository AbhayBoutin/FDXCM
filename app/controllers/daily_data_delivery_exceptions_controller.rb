class DailyDataDeliveryExceptionsController < ApplicationController
  # GET /daily_data_delivery_exceptions
  # GET /daily_data_delivery_exceptions.json
  def index
    @daily_data_delivery_exceptions = DailyDataDeliveryException.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_data_delivery_exceptions }
    end
  end

  # GET /daily_data_delivery_exceptions/1
  # GET /daily_data_delivery_exceptions/1.json
  def show
    @daily_data_delivery_exception = DailyDataDeliveryException.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_data_delivery_exception }
    end
  end

  # GET /daily_data_delivery_exceptions/new
  # GET /daily_data_delivery_exceptions/new.json
  def new
    @daily_data_delivery_exception = DailyDataDeliveryException.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_data_delivery_exception }
    end
  end

  # GET /daily_data_delivery_exceptions/1/edit
  def edit
    @daily_data_delivery_exception = DailyDataDeliveryException.find(params[:id])
  end

  # POST /daily_data_delivery_exceptions
  # POST /daily_data_delivery_exceptions.json
  def create
    @daily_data_delivery_exception = DailyDataDeliveryException.new(params[:daily_data_delivery_exception])

    respond_to do |format|
      if @daily_data_delivery_exception.save
        format.html { redirect_to @daily_data_delivery_exception, notice: 'Daily data delivery exception was successfully created.' }
        format.json { render json: @daily_data_delivery_exception, status: :created, location: @daily_data_delivery_exception }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_data_delivery_exception.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_data_delivery_exceptions/1
  # PUT /daily_data_delivery_exceptions/1.json
  def update
    @daily_data_delivery_exception = DailyDataDeliveryException.find(params[:id])

    respond_to do |format|
      if @daily_data_delivery_exception.update_attributes(params[:daily_data_delivery_exception])
        format.html { redirect_to @daily_data_delivery_exception, notice: 'Daily data delivery exception was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_data_delivery_exception.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_data_delivery_exceptions/1
  # DELETE /daily_data_delivery_exceptions/1.json
  def destroy
    @daily_data_delivery_exception = DailyDataDeliveryException.find(params[:id])
    @daily_data_delivery_exception.destroy

    respond_to do |format|
      format.html { redirect_to daily_data_delivery_exceptions_url }
      format.json { head :no_content }
    end
  end
end
