class ProductionPaysController < ApplicationController
  # GET /production_pays
  # GET /production_pays.json
  def index
    @production_pays = ProductionPay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @production_pays }
    end
  end

  # GET /production_pays/1
  # GET /production_pays/1.json
  def show
    @production_pay = ProductionPay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @production_pay }
    end
  end

  # GET /production_pays/new
  # GET /production_pays/new.json
  def new
    @production_pay = ProductionPay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @production_pay }
    end
  end

  # GET /production_pays/1/edit
  def edit
    @production_pay = ProductionPay.find(params[:id])
  end

  # POST /production_pays
  # POST /production_pays.json
  def create
    @production_pay = ProductionPay.new(params[:production_pay])

    respond_to do |format|
      if @production_pay.save
        format.html { redirect_to @production_pay, notice: 'Production pay was successfully created.' }
        format.json { render json: @production_pay, status: :created, location: @production_pay }
      else
        format.html { render action: "new" }
        format.json { render json: @production_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /production_pays/1
  # PUT /production_pays/1.json
  def update
    @production_pay = ProductionPay.find(params[:id])

    respond_to do |format|
      if @production_pay.update_attributes(params[:production_pay])
        format.html { redirect_to @production_pay, notice: 'Production pay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @production_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_pays/1
  # DELETE /production_pays/1.json
  def destroy
    @production_pay = ProductionPay.find(params[:id])
    @production_pay.destroy

    respond_to do |format|
      format.html { redirect_to production_pays_url }
      format.json { head :no_content }
    end
  end
end
