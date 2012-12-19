class FedexContractsController < ApplicationController
  # GET /fedex_contracts
  # GET /fedex_contracts.json
  def index
    @fedex_contracts = FedexContract.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fedex_contracts }
    end
  end

  # GET /fedex_contracts/1
  # GET /fedex_contracts/1.json
  def show
    @fedex_contract = FedexContract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fedex_contract }
    end
  end

  # GET /fedex_contracts/new
  # GET /fedex_contracts/new.json
  def new
    @fedex_contract = FedexContract.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fedex_contract }
    end
  end

  # GET /fedex_contracts/1/edit
  def edit
    @fedex_contract = FedexContract.find(params[:id])
  end

  # POST /fedex_contracts
  # POST /fedex_contracts.json
  def create
    @fedex_contract = FedexContract.new(params[:fedex_contract])

    respond_to do |format|
      if @fedex_contract.save
        format.html { redirect_to @fedex_contract, notice: 'Fedex contract was successfully created.' }
        format.json { render json: @fedex_contract, status: :created, location: @fedex_contract }
      else
        format.html { render action: "new" }
        format.json { render json: @fedex_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fedex_contracts/1
  # PUT /fedex_contracts/1.json
  def update
    @fedex_contract = FedexContract.find(params[:id])

    respond_to do |format|
      if @fedex_contract.update_attributes(params[:fedex_contract])
        format.html { redirect_to @fedex_contract, notice: 'Fedex contract was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fedex_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fedex_contracts/1
  # DELETE /fedex_contracts/1.json
  def destroy
    @fedex_contract = FedexContract.find(params[:id])
    @fedex_contract.destroy

    respond_to do |format|
      format.html { redirect_to fedex_contracts_url }
      format.json { head :no_content }
    end
  end
end
