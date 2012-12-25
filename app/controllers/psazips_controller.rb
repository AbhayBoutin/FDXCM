class PsazipsController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # GET /psazips
  # GET /psazips.json
  def index
    @psazips = Psazip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @psazips }
    end
  end

  # GET /psazips/1
  # GET /psazips/1.json
  def show
    @psazip = Psazip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @psazip }
    end
  end

  # GET /psazips/new
  # GET /psazips/new.json
  def new
    @psazip = Psazip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @psazip }
    end
  end

  # GET /psazips/1/edit
  def edit
    @psazip = Psazip.find(params[:id])
  end

  # POST /psazips
  # POST /psazips.json
  def create
    @psazip = Psazip.new(params[:psazip])

    respond_to do |format|
      if @psazip.save
        format.html { redirect_to @psazip, notice: 'Psazip was successfully created.' }
        format.json { render json: @psazip, status: :created, location: @psazip }
      else
        format.html { render action: "new" }
        format.json { render json: @psazip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /psazips/1
  # PUT /psazips/1.json
  def update
    @psazip = Psazip.find(params[:id])

    respond_to do |format|
      if @psazip.update_attributes(params[:psazip])
        format.html { redirect_to @psazip, notice: 'Psazip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @psazip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psazips/1
  # DELETE /psazips/1.json
  def destroy
    @psazip = Psazip.find(params[:id])
    @psazip.destroy

    respond_to do |format|
      format.html { redirect_to psazips_url }
      format.json { head :no_content }
    end
  end
end
