class DeliveryExceptionsController < ApplicationController
  # GET /delivery_exceptions
  # GET /delivery_exceptions.json
  def index
    @delivery_exceptions = DeliveryException.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @delivery_exceptions }
    end
  end

  # GET /delivery_exceptions/1
  # GET /delivery_exceptions/1.json
  def show
    @delivery_exception = DeliveryException.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delivery_exception }
    end
  end

  # GET /delivery_exceptions/new
  # GET /delivery_exceptions/new.json
  def new
    @delivery_exception = DeliveryException.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delivery_exception }
    end
  end

  # GET /delivery_exceptions/1/edit
  def edit
    @delivery_exception = DeliveryException.find(params[:id])
  end

  # POST /delivery_exceptions
  # POST /delivery_exceptions.json
  def create
    @delivery_exception = DeliveryException.new(params[:delivery_exception])

    respond_to do |format|
      if @delivery_exception.save
        format.html { redirect_to @delivery_exception, notice: 'Delivery exception was successfully created.' }
        format.json { render json: @delivery_exception, status: :created, location: @delivery_exception }
      else
        format.html { render action: "new" }
        format.json { render json: @delivery_exception.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /delivery_exceptions/1
  # PUT /delivery_exceptions/1.json
  def update
    @delivery_exception = DeliveryException.find(params[:id])

    respond_to do |format|
      if @delivery_exception.update_attributes(params[:delivery_exception])
        format.html { redirect_to @delivery_exception, notice: 'Delivery exception was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @delivery_exception.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_exceptions/1
  # DELETE /delivery_exceptions/1.json
  def destroy
    @delivery_exception = DeliveryException.find(params[:id])
    @delivery_exception.destroy

    respond_to do |format|
      format.html { redirect_to delivery_exceptions_url }
      format.json { head :no_content }
    end
  end
end
