class PsasController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # GET /psas
  # GET /psas.json
  def index
    @psas = Psa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @psas }
    end
  end

  # GET /psas/1
  # GET /psas/1.json
  def show
    @psa = Psa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @psa }
    end
  end

  # GET /psas/new
  # GET /psas/new.json
  def new
    @psa = Psa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @psa }
    end
  end

  # GET /psas/1/edit
  def edit
    @psa = Psa.find(params[:id])
  end

  # POST /psas
  # POST /psas.json
  def create
    @psa = Psa.new(params[:psa])

    respond_to do |format|
      if @psa.save
        format.html { redirect_to @psa, notice: 'Psa was successfully created.' }
        format.json { render json: @psa, status: :created, location: @psa }
      else
        format.html { render action: "new" }
        format.json { render json: @psa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /psas/1
  # PUT /psas/1.json
  def update
    @psa = Psa.find(params[:id])

    respond_to do |format|
      if @psa.update_attributes(params[:psa])
        format.html { redirect_to @psa, notice: 'Psa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @psa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psas/1
  # DELETE /psas/1.json
  def destroy
    @psa = Psa.find(params[:id])
    @psa.destroy

    respond_to do |format|
      format.html { redirect_to psas_url }
      format.json { head :no_content }
    end
  end
end
