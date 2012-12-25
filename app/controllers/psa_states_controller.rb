class PsaStatesController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # GET /psa_states
  # GET /psa_states.json
  def index
    @psa_states = PsaState.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @psa_states }
    end
  end

  # GET /psa_states/1
  # GET /psa_states/1.json
  def show
    @psa_state = PsaState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @psa_state }
    end
  end

  # GET /psa_states/new
  # GET /psa_states/new.json
  def new
    @psa_state = PsaState.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @psa_state }
    end
  end

  # GET /psa_states/1/edit
  def edit
    @psa_state = PsaState.find(params[:id])
  end

  # POST /psa_states
  # POST /psa_states.json
  def create
    @psa_state = PsaState.new(params[:psa_state])

    respond_to do |format|
      if @psa_state.save
        format.html { redirect_to @psa_state, notice: 'Psa state was successfully created.' }
        format.json { render json: @psa_state, status: :created, location: @psa_state }
      else
        format.html { render action: "new" }
        format.json { render json: @psa_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /psa_states/1
  # PUT /psa_states/1.json
  def update
    @psa_state = PsaState.find(params[:id])

    respond_to do |format|
      if @psa_state.update_attributes(params[:psa_state])
        format.html { redirect_to @psa_state, notice: 'Psa state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @psa_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psa_states/1
  # DELETE /psa_states/1.json
  def destroy
    @psa_state = PsaState.find(params[:id])
    @psa_state.destroy

    respond_to do |format|
      format.html { redirect_to psa_states_url }
      format.json { head :no_content }
    end
  end
end
