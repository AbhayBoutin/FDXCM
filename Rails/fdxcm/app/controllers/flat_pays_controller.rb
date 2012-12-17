class FlatPaysController < ApplicationController
  # GET /flat_pays
  # GET /flat_pays.json
  def index
    @flat_pays = FlatPay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flat_pays }
    end
  end

  # GET /flat_pays/1
  # GET /flat_pays/1.json
  def show
    @flat_pay = FlatPay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flat_pay }
    end
  end

  # GET /flat_pays/new
  # GET /flat_pays/new.json
  def new
    @flat_pay = FlatPay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flat_pay }
    end
  end

  # GET /flat_pays/1/edit
  def edit
    @flat_pay = FlatPay.find(params[:id])
  end

  # POST /flat_pays
  # POST /flat_pays.json
  def create
    @flat_pay = FlatPay.new(params[:flat_pay])

    respond_to do |format|
      if @flat_pay.save
        format.html { redirect_to @flat_pay, notice: 'Flat pay was successfully created.' }
        format.json { render json: @flat_pay, status: :created, location: @flat_pay }
      else
        format.html { render action: "new" }
        format.json { render json: @flat_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flat_pays/1
  # PUT /flat_pays/1.json
  def update
    @flat_pay = FlatPay.find(params[:id])

    respond_to do |format|
      if @flat_pay.update_attributes(params[:flat_pay])
        format.html { redirect_to @flat_pay, notice: 'Flat pay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flat_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat_pays/1
  # DELETE /flat_pays/1.json
  def destroy
    @flat_pay = FlatPay.find(params[:id])
    @flat_pay.destroy

    respond_to do |format|
      format.html { redirect_to flat_pays_url }
      format.json { head :no_content }
    end
  end
end
