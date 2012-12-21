class WeeklyReviewController < ApplicationController

  # Devise Authentication
  before_filter :authenticate_user!

  def index
  # List all weeks that have data for this contractor
    currentBusiness = current_user.thisUsersBusiness
    currentBusinessEmployees = currentBusiness.employees
    @dates = []

    currentBusinessEmployees.each do |t|
      @dates << t.dailyData.minimum("startTime")
    end

    firstDayOfData = @dates.min
    @dates = []
    sundayOfDayOfData = firstDayOfData - firstDayOfData.wday.days
    currentDateToLoop = sundayOfDayOfData

    while currentDateToLoop < DateTime.now
      @dates << currentDateToLoop
      currentDateToLoop += 7.days
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dates }
    end

  end

  def edit
  end

  def show
  # Get Current Contractors Daily Data for a/the/current week that HAS data
  end

  def update
  end
end
