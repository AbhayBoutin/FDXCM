class PayProfilesController < ApplicationController
  # GET /pay_profiles
  # GET /pay_profiles.json
  def index
    @pay_profiles = PayProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pay_profiles }
    end
  end

  # GET /pay_profiles/1
  # GET /pay_profiles/1.json
  def show
    @pay_profile = PayProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pay_profile }
    end
  end

  # GET /pay_profiles/new
  # GET /pay_profiles/new.json
  def new
    @pay_profile = PayProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pay_profile }
    end
  end

  # GET /pay_profiles/1/edit
  def edit
    @pay_profile = PayProfile.find(params[:id])
  end

  # POST /pay_profiles
  # POST /pay_profiles.json
  def create
    @pay_profile = PayProfile.new(params[:pay_profile])

    respond_to do |format|
      if @pay_profile.save
        format.html { redirect_to @pay_profile, notice: 'Pay profile was successfully created.' }
        format.json { render json: @pay_profile, status: :created, location: @pay_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @pay_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pay_profiles/1
  # PUT /pay_profiles/1.json
  def update
    @pay_profile = PayProfile.find(params[:id])

    respond_to do |format|
      if @pay_profile.update_attributes(params[:pay_profile])
        format.html { redirect_to @pay_profile, notice: 'Pay profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pay_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pay_profiles/1
  # DELETE /pay_profiles/1.json
  def destroy
    @pay_profile = PayProfile.find(params[:id])
    @pay_profile.destroy

    respond_to do |format|
      format.html { redirect_to pay_profiles_url }
      format.json { head :no_content }
    end
  end
end
