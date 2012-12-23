class WeeklyReviewController < ApplicationController

  # Devise Authentication
  before_filter :authenticate_user!

  # List all weeks that have data for this contractor
  def index
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

  # Get Current Contractors Daily Data for a/the/current week that HAS data
  def show
    @employeeDailyData = []
    currentBusiness = current_user.thisUsersBusiness
    currentBusinessEmployees = currentBusiness.employees.uniq
    # match '/weekly_review/:weekreference' => 'weekly_review#show'
    @weekStart = "Sun, 2 Dec 2012 00:00 -0500".to_datetime
    @weekEnd = @weekStart+7.days-1.second
    # currentBusinessEmployees.each do |t|
    #   @dates << t.dailyData.minimum("startTime")
    # end

    # firstDayOfData = @dates.min
    @dates = []
    # sundayOfDayOfData = firstDayOfData - firstDayOfData.wday.days
    # currentDateToLoop = sundayOfDayOfData

    first = currentBusinessEmployees.first 
    second = currentBusinessEmployees.second
    third = currentBusinessEmployees.third

    # @first = first.dailyData
    # @first = first.dailyData.where( "startTime > ? AND endTime < ?", @weekStart, @weekEnd )
    # @first = first.dailyData.deliveryStop

    # currentBusinessEmployees.each do |t|
    #   # Names
    #   @employeeDailyData << t.firstName + " " + t.lastName
    #   # DailyData
    #   @employeeDailyData << t.dailyData.where( "startTime > ? AND endTime < ?", @weekStart, @weekEnd ).each
    # end

    @employeeDailyData = [["adam", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],
                          ["boy", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],
                          ["charles", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],
                          ["david", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],
                          ["echo", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],
                          ["foxtro", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],
                          ["gamma", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],
                          ["helo", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],
                          ["indigo", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],]

    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @employeeDailyData }
    end

  end

  def update
  end
end
