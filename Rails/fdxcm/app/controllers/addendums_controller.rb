class AddendumsController < ApplicationController
  # GET /addendums
  # GET /addendums.json
  def index
    @addendums = Addendum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addendums }
    end
  end

  # GET /addendums/1
  # GET /addendums/1.json
  def show
    @addendum = Addendum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @addendum }
    end
  end

  # GET /addendums/new
  # GET /addendums/new.json
  def new
    @addendum = Addendum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @addendum }
    end
  end

  # GET /addendums/1/edit
  def edit
    @addendum = Addendum.find(params[:id])
  end

  # POST /addendums
  # POST /addendums.json
  def create
    @addendum = Addendum.new(params[:addendum])

    respond_to do |format|
      if @addendum.save
        format.html { redirect_to @addendum, notice: 'Addendum was successfully created.' }
        format.json { render json: @addendum, status: :created, location: @addendum }
      else
        format.html { render action: "new" }
        format.json { render json: @addendum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addendums/1
  # PUT /addendums/1.json
  def update
    @addendum = Addendum.find(params[:id])

    respond_to do |format|
      if @addendum.update_attributes(params[:addendum])
        format.html { redirect_to @addendum, notice: 'Addendum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @addendum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addendums/1
  # DELETE /addendums/1.json
  def destroy
    @addendum = Addendum.find(params[:id])
    @addendum.destroy

    respond_to do |format|
      format.html { redirect_to addendums_url }
      format.json { head :no_content }
    end
  end
end
