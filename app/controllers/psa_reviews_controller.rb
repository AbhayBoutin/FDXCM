class PsaReviewsController < ApplicationController
  # GET /psa_reviews
  # GET /psa_reviews.json
  def index
    @psa_reviews = PsaReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @psa_reviews }
    end
  end

  # GET /psa_reviews/1
  # GET /psa_reviews/1.json
  def show
    @psa_review = PsaReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @psa_review }
    end
  end

  # GET /psa_reviews/new
  # GET /psa_reviews/new.json
  def new
    @psa_review = PsaReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @psa_review }
    end
  end

  # GET /psa_reviews/1/edit
  def edit
    @psa_review = PsaReview.find(params[:id])
  end

  # POST /psa_reviews
  # POST /psa_reviews.json
  def create
    @psa_review = PsaReview.new(params[:psa_review])

    respond_to do |format|
      if @psa_review.save
        format.html { redirect_to @psa_review, notice: 'Psa review was successfully created.' }
        format.json { render json: @psa_review, status: :created, location: @psa_review }
      else
        format.html { render action: "new" }
        format.json { render json: @psa_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /psa_reviews/1
  # PUT /psa_reviews/1.json
  def update
    @psa_review = PsaReview.find(params[:id])

    respond_to do |format|
      if @psa_review.update_attributes(params[:psa_review])
        format.html { redirect_to @psa_review, notice: 'Psa review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @psa_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psa_reviews/1
  # DELETE /psa_reviews/1.json
  def destroy
    @psa_review = PsaReview.find(params[:id])
    @psa_review.destroy

    respond_to do |format|
      format.html { redirect_to psa_reviews_url }
      format.json { head :no_content }
    end
  end
end
