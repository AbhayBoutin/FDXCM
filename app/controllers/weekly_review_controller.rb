class WeeklyReviewController < ApplicationController
  # CanCan
  # load_and_authorize_resource

  # Devise Authentication
  before_filter :authenticate_user!

  # List all weeks that have data for this contractor
  def index
    currentBusiness = current_user.thisUsersBusiness
    currentBusinessEmployees = currentBusiness.employees
    @dates = []

    currentBusinessEmployees.each do |t|
      # Make sure only weeks with data are considered
      if t.dailyData.minimum("startTime") != nil
        @dates << t.dailyData.minimum("startTime")
      end
    end

    firstDayOfData = @dates.min
    @dates = []
    sundayOfDayOfData = firstDayOfData - firstDayOfData.wday.days
    currentDateToLoop = sundayOfDayOfData

    while currentDateToLoop < DateTime.now
      @dates << currentDateToLoop
      currentDateToLoop += 7.days
    end

    # TOGGLE ON PUT IN REVERSE ORDER/ OFF TO PUT IN REGULAR ORDER 
    @dates.reverse!
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dates }
    end

  end

  def edit
  end

  # Get Current Contractors Daily Data for a/the/current week that HAS data
  def show
    @weeklyReviewData = []
    currentBusiness = current_user.thisUsersBusiness
    currentBusinessEmployees = currentBusiness.employees
    @weekStart = "Mon, 3 Dec 2012 00:00 -0500".to_datetime
    @weekEnd = @weekStart+7.days-1.second

    @dates = []
    dayOfData = @weekStart.to_date
    while dayOfData < @weekEnd.to_date
      @dates << dayOfData
      dayOfData+=1.day
    end

    currentBusinessEmployees.each do |e|
      # Vars
      @employeeWeeklyData = []
      # Names
      @employeeWeeklyData << e.firstName + " " + e.lastName
      # Days
      # d { @dates }
      @dates.each do |d|
        dStop = e.dailyData.select("deliveryStop").where( "startTime BETWEEN ? AND ?", d.beginning_of_day, d.end_of_day )
        dPkg = e.dailyData.select("deliveryPackage").where( "startTime BETWEEN ? AND ?", d.beginning_of_day, d.end_of_day )
        pStop = e.dailyData.select("pickupStop").where( "startTime BETWEEN ? AND ?", d.beginning_of_day, d.end_of_day )
        pPkg = e.dailyData.select("pickupPackage").where( "startTime BETWEEN ? AND ?", d.beginning_of_day, d.end_of_day )
        iLS = e.dailyData.select("inboundLocalService").where( "startTime BETWEEN ? AND ?", d.beginning_of_day, d.end_of_day )
        @employeeWeeklyData << dStop << dPkg << pStop << pPkg << iLS
      end
      # DailyData
      @weeklyReviewData << @employeeWeeklyData
    d { @employeeWeeklyData }
    end

    # d { @weeklyReviewData }

    @weeklyReviewData = [["adam", 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5],
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
      format.json { render json: @weeklyReviewData }
    end

  end

  def update
  end
end
