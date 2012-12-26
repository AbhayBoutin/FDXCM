# encoding: utf-8

# "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime
# "Sun, 1 Apr 2012 01:01:01 -0500".to_datetime
# "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime
# "Tue, 4 Dec 2012 17:00:00 -0500".to_datetime
# "Wed, 5 Dec 2012 17:00:00 -0500".to_datetime
# "Thu, 6 Dec 2012 17:00:00 -0500".to_datetime
# "Fri, 7 Dec 2012 17:00:00 -0500".to_datetime
# "Sat, 8 Dec 2012 17:00:00 -0500".to_datetime
# "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime

# Business
  puts 'SETTING UP Business'
  business1 = Business.create({ :name => "Delivery Experts of NC", :taxIDNumber => "123-45-6789", :address => "123 Main St.", :city => "Charlotte", :state => "NC", :zip => "28202", :country => "USA", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  business2 = Business.create({ :name => "Package Perks", :taxIDNumber => "234-56-7890", :address => "202 Outer Rd.", :city => "Belmont", :state => "SC", :zip => "29705", :country => "USA", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Addendum
  puts 'SETTING UP Addendum'
  addendum1 = Addendum.create({ :fedexAddendumName => "G", :fedexAddendumNumber => "02022012", :fedexContractorAddendumName => "stopIncreases", :fedexContractorAddendumNumber => "1", :content => "This is a whole bunch of text about what the Addendum is and is about.", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :fedexContract_id => business1.id }, :without_protection => true )
  addendum2 = Addendum.create({ :fedexAddendumName => "H", :fedexAddendumNumber => "03032012", :fedexContractorAddendumName => "Increased Stop Pay", :fedexContractorAddendumNumber => "2", :content => "This is a whole bunch of text about what the Addendum is and is about.", :startDate => "Wed, 1 Feb 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Wed, 1 Feb 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :fedexContract_id => business1.id }, :without_protection => true )
  addendum3 = Addendum.create({ :fedexAddendumName => "I", :fedexAddendumNumber => "04042012", :fedexContractorAddendumName => "Increased Fuel Pay", :fedexContractorAddendumNumber => "3", :content => "This is a whole bunch of text about what the Addendum is and is about.", :startDate => "Thu, 1 Mar 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Thu, 1 Mar 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :fedexContract_id => business1.id }, :without_protection => true )

# DailyDataDeliveryException
  # puts 'SETTING UP DailyDataDeliveryException'
  # DailyDataDeliveryException.create({ :startDate => nil, :endDate => nil, :dailyDatum_id => nil, :deliveryException_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# DailyDataVehicle
  puts 'SETTING UP DailyDataVehicle'
  DailyDataVehicle.create({ :vehicle_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :daily_data_id => nil }, :without_protection => true )

# Exceptions
  puts 'SETTING UP Exceptions'
  exception02 = DeliveryException.create({ :exceptionType => "2", :exceptionDescription => "Code 02:DNA", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  exception03 = DeliveryException.create({ :exceptionType => "3", :exceptionDescription => "Code 03:Address Missing", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  exception04 = DeliveryException.create({ :exceptionType => "4", :exceptionDescription => "Code 04:Closed", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  exception07 = DeliveryException.create({ :exceptionType => "7", :exceptionDescription => "Code 07:Security", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Employee
  puts 'SETTING UP Employee'
  adam = Employee.create({ :firstName => "Adam", :lastName => "Zulu", :fedexNumber => 2049529, :contractorNumber => 1001, :hireDate => "Sun, 1 Jan 2012".to_datetime, :dateOfBirth => "Sat, 1 Jan 2000".to_datetime, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :terminationDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => business1.id }, :without_protection => true )
  boy = Employee.create({ :firstName => "Boy", :lastName => "Yankee", :fedexNumber => 3074125, :contractorNumber => 1002, :hireDate => "Sun, 1 Jan 2012".to_datetime, :dateOfBirth => "Sat, 1 Jan 2000".to_datetime, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :terminationDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => business1.id }, :without_protection => true )
  charles = Employee.create({ :firstName => "Charles", :lastName => "Xray", :fedexNumber => 4095421, :contractorNumber => 1003, :hireDate => "Sun, 1 Jan 2012".to_datetime, :dateOfBirth => "Sat, 1 Jan 2000".to_datetime, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :terminationDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => business1.id }, :without_protection => true )
  david = Employee.create({ :firstName => "David", :lastName => "Walrus", :fedexNumber => 5105330, :contractorNumber => 201, :hireDate => "Sun, 1 Jan 2012".to_datetime, :dateOfBirth => "Sat, 1 Jan 2000".to_datetime, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :terminationDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => business2.id }, :without_protection => true )
  echo = Employee.create({ :firstName => "Echo", :lastName => "Victor", :fedexNumber => 6105449, :contractorNumber => 202, :hireDate => "Sun, 1 Jan 2012".to_datetime, :dateOfBirth => "Sat, 1 Jan 2000".to_datetime, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :terminationDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => business2.id }, :without_protection => true )
  felix = Employee.create({ :firstName => "Felix", :lastName => "Unicorn", :fedexNumber => 7465558, :contractorNumber => 202, :hireDate => "Sun, 1 Jan 2012".to_datetime, :dateOfBirth => "Sat, 1 Jan 2000".to_datetime, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :terminationDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => business2.id }, :without_protection => true )

# EmployeeManagerAssignment
  puts 'SETTING UP EmployeeManagerAssignment'
  EmployeeManagerAssignment.create({ :startDate => nil, :endDate => nil, :activeBoolean => nil, :employee_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# EmployeePay
  puts 'SETTING UP EmployeePay'
  EmployeePay.create({ :employee_id => nil, :startDate => nil, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :pay_id => nil }, :without_protection => true )

# EmployeePSA
  puts 'SETTING UP EmployeePSA'
  adamPsa1 = EmployeePsa.create({ :startDate => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :employee_id => 1, :psa_id => 1, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  boyPsa3 = EmployeePsa.create({ :startDate => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :employee_id => 2, :psa_id => 3, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  charlesPsa2 = EmployeePsa.create({ :startDate => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endDate => "Sat, 8 Dec 2012 08:00:00 -0500".to_datetime, :activeBoolean => false, :employee_id => 3, :psa_id => 2, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  charlesPsa4 = EmployeePsa.create({ :startDate => "Mon, 10 Dec 2012 08:00:00 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :employee_id => 3, :psa_id => 4, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# EmployeeTerminal
  puts 'SETTING UP EmployeeTerminal'
  EmployeeTerminal.create({ :startDate => nil, :endDate => nil, :activeBoolean => nil, :employee_id => nil, :terminal_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# FedexContract
  puts 'SETTING UP FedexContract'
  downtown = FedexContract.create({ :fedexContractName => "NC-24401", :fedexContractNumber => 5954441, :contractorContractName => "Downtown", :contractorContractNumber => 1, :content => "This is my first contract signed on 1/1/12! YEAH!", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => business1.id, :deliveryStopPay => 2.00, :deliveryPackagePay => 0.50, :pickupStopPay => 3.00, :pickupPackagePay => 1.00, :coreZoneSupplementalPay => 54.00, :vehicleAvailabilityPay => 40.00, :fuelSupplementPay => 1.25, :toolRentalCost => 35.00, :internationalPackagePay => 3.00, :hazardousPackagePay => 2.00, :vacationProgramCost => 50.00, :uniformCost => 3.00 }, :without_protection => true )
  uptown = FedexContract.create({ :fedexContractName => "NC-27327", :fedexContractNumber => 5954493, :contractorContractName => "Uptown", :contractorContractNumber => 2, :content => "This is my first expansion!", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => business1.id, :deliveryStopPay => 2.25, :deliveryPackagePay => 0.60, :pickupStopPay => 3.25, :pickupPackagePay => 1.10, :coreZoneSupplementalPay => 0.00, :vehicleAvailabilityPay => 40.00, :fuelSupplementPay => 1.25, :toolRentalCost => 35.00, :internationalPackagePay => 3.00, :hazardousPackagePay => 2.00, :vacationProgramCost => 0.00, :uniformCost => 3.00 }, :without_protection => true )
  rural = FedexContract.create({ :fedexContractName => "SC-72641", :fedexContractNumber => 5954442, :contractorContractName => "Rural", :contractorContractNumber => 3, :content => "This is my rural contract.", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => business1.id, :deliveryStopPay => 2.00, :deliveryPackagePay => 0.50, :pickupStopPay => 3.00, :pickupPackagePay => 1.00, :coreZoneSupplementalPay => 125.00, :vehicleAvailabilityPay => 40.00, :fuelSupplementPay => 1.35, :toolRentalCost => 35.00, :internationalPackagePay => 3.00, :hazardousPackagePay => 2.00, :vacationProgramCost => 75.00, :uniformCost => 3.00 }, :without_protection => true )

# FlatPay
  puts 'SETTING UP FlatPay'
  FlatPay.create({ :payAmount => nil, :startDate => nil, :endTime => nil, :activeBoolean => nil, :frequency_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Frequency
  puts 'SETTING UP Frequency'
  daily = Frequency.create({ :frequencyInterval => "Daily", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  weekly = Frequency.create({ :frequencyInterval => "Weekly", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  biweekly = Frequency.create({ :frequencyInterval => "Bi-Weekly", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  monthly = Frequency.create({ :frequencyInterval => "Monthly", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Note
  puts 'SETTING UP Note'
  Note.create({ :notable_id => nil, :notable_type => nil, :content => nil, :startDate => nil, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Pay
  puts 'SETTING UP Pay'
  Pay.create({ :amount => nil, :datetime => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# ProductionPay
  puts 'SETTING UP ProductionPay'
  newbie = ProductionPay.create({ :delivery_package_pay => 1.0, :delivery_stop_pay => 0.1, :pickup_package_pay => 1.0, :pickup_stop_pay => 0.1, :hourly_pay => 10.0, :task_pay => 100.0, :incident_dock_pay => 25.0, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  veteran = ProductionPay.create({ :delivery_package_pay => 1.5, :delivery_stop_pay => 0.25, :pickup_package_pay => 1.5, :pickup_stop_pay => 0.25, :hourly_pay => 25.0, :task_pay => 200.0, :incident_dock_pay => 15.0, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# PayProfile
  puts 'SETTING UP PayProfile'
  adampay = PayProfile.create({ :profileName => nil, :employee_id => adam.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :flatPay_id => nil, :productionPay_id => newbie.id }, :without_protection => true )
  boypay = PayProfile.create({ :profileName => nil, :employee_id => boy.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :flatPay_id => nil, :productionPay_id => newbie.id }, :without_protection => true )
  charlespay = PayProfile.create({ :profileName => nil, :employee_id => charles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :flatPay_id => nil, :productionPay_id => veteran.id }, :without_protection => true )

# PSA
  puts 'SETTING UP PSA'
  downtownpsa1 = Psa.create({ :fedexPSAName => "Smith1", :fedexPSANumber => 10459, :contractorPSAName => "downtownPSA", :contractorPSANumber => 10, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => 1, :business_id => 1, :supplementalBoolean => false }, :without_protection => true )
  downtownpsa2 = Psa.create({ :fedexPSAName => "Smith1S", :fedexPSANumber => 10459, :contractorPSAName => "downtownPSASupp", :contractorPSANumber => 11, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => 1, :business_id => 1, :supplementalBoolean => true }, :without_protection => true )
  uptownpsa = Psa.create({ :fedexPSAName => "Smith2", :fedexPSANumber => 10459, :contractorPSAName => "uptownPSA", :contractorPSANumber => 20, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => 1, :business_id => 1, :supplementalBoolean => false }, :without_protection => true )
  ruralpsa = Psa.create({ :fedexPSAName => "Smith3", :fedexPSANumber => 10459, :contractorPSAName => "ruralPSA", :contractorPSANumber => 30, :activeBoolean => true, :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => 1, :business_id => 1, :supplementalBoolean => false }, :without_protection => true )

# PSAState
  puts 'SETTING UP PSAState'
  PsaState.create({ :psa_id => nil, :state_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# PSAZIP
  puts 'SETTING UP PSAZIP'
  Psazip.create({ :psa_id => nil, :zip_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Region
  puts 'SETTING UP Region'
  central = Region.create({ :fedexRegionName => "Central", :fedexRegionNumber => 8, :fedexRegionPhone => "704-395-4200", :contractorRegionName => "Main", :contractorRegionNumber => 1, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  mountain = Region.create({ :fedexRegionName => "Mountain", :fedexRegionNumber => 91, :fedexRegionPhone => "704-395-5555", :contractorRegionName => "Other", :contractorRegionNumber => 2, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Role
  puts 'SETTING UP Role'
  admin = Role.create({ :name => "Admin", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  owner = Role.create({ :name => "Owner", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  manager = Role.create({ :name => "Manager", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  employee = Role.create({ :name => "Employee", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# ServiceType
  puts 'SETTING UP ServiceType'
  ground = ServiceType.create({ :serviceType => "Ground", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  hd = ServiceType.create({ :serviceType => "Home Delivery", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  maintenance = ServiceType.create({ :serviceType => "Maintenance", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  lh = ServiceType.create({ :serviceType => "Line-Haul", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# State
  puts 'SETTING UP State'
  nc = State.create({ :state => "North Carolina", :abbreviation => "NC", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  sc = State.create({ :state => "South Carolina", :abbreviation => "SC", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Terminal
  puts 'SETTING UP Terminal'
  chal = Terminal.create({ :fedexTerminalName => "CHAL", :fedexTerminalNumber => 281, :contractorTerminalName => "CHAL", :contractorTerminalNumber => "1", :colocationBoolean => false, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => central.id }, :without_protection => true )
  ashe = Terminal.create({ :fedexTerminalName => "ASHE", :fedexTerminalNumber => 288, :contractorTerminalName => "Mountains", :contractorTerminalNumber => "2", :colocationBoolean => true, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => mountain.id }, :without_protection => true )
  wilm = Terminal.create({ :fedexTerminalName => "WILM", :fedexTerminalNumber => 284, :contractorTerminalName => "Beach", :contractorTerminalNumber => "3", :colocationBoolean => false, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => central.id }, :without_protection => true )

# User
  puts 'SETTING UP DEFAULT USER LOGIN'
  adamUser = User.create({ :email => "adam@specialorange.org", :password => "adamadam", :password_confirmation => "adamadam" }, :without_protection => true ).save!
  # adamUser = User.first
  # adamUser.contractorBoolean = true
  # adamUser.activeBoolean = true
  # adamUser.employee_id = Employee.first
  # adamUser.save

# VehicleFuel
  puts 'SETTING UP VehicleFuel'
  gas20 = VehicleFuel.create({ :fuelType => "Gas", :fuelTankSize => "20", :mpg => 10, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  gas30 = VehicleFuel.create({ :fuelType => "Gas", :fuelTankSize => "30", :mpg => 9, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  diesel = VehicleFuel.create({ :fuelType => "Gas", :fuelTankSize => "25", :mpg => 8, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  cng = VehicleFuel.create({ :fuelType => "Gas", :fuelTankSize => "40", :mpg => 12, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# VehicleOdometer
  puts 'SETTING UP VehicleOdometer'
  newmiles = VehicleOdometer.create({ :odometerReading => 100, :startDate => "Mon, 17 Dec 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  lowmiles = VehicleOdometer.create({ :odometerReading => 50000, :startDate => "Mon, 17 Dec 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  medmiles = VehicleOdometer.create({ :odometerReading => 150000, :startDate => "Mon, 17 Dec 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  highmiles = VehicleOdometer.create({ :odometerReading => 250000, :startDate => "Mon, 17 Dec 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# VehicleType
  puts 'SETTING UP VehicleType'
  p700 = VehicleType.create({ :vehicleSize => "p700", :bulkBoolean => false, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  p900 = VehicleType.create({ :vehicleSize => "p900", :bulkBoolean => false, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  p1000 = VehicleType.create({ :vehicleSize => "p1000", :bulkBoolean => false, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  p1200 = VehicleType.create({ :vehicleSize => "p1200", :bulkBoolean => false, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  bulk20 = VehicleType.create({ :vehicleSize => "Bulk - 20 Ft", :bulkBoolean => true, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  bulk24 = VehicleType.create({ :vehicleSize => "Bulk - 24 Ft", :bulkBoolean => true, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  bulk26 = VehicleType.create({ :vehicleSize => "Bulk - 26 Ft", :bulkBoolean => true, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# ZIP
  puts 'SETTING UP ZIP'
  # CHAL
  o2 = Zip.create({ :zip => "28202", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  o3 = Zip.create({ :zip => "28203", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  o9 = Zip.create({ :zip => "28209", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  one7 = Zip.create({ :zip => "28217", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  two12 = Zip.create({ :zip => "28012", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  # ASHE
  eight01 = Zip.create({ :zip => "28801", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  eight25 = Zip.create({ :zip => "28825", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  nine01 = Zip.create({ :zip => "28901", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# REFERENCING &&&&&&&&&&&&&&&&&&&&&&&&& REFERENCING &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& REFERENCING
  puts 'REFERENCING &&&&&&&&&&&&&&&&&&&&&&&&& REFERENCING &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& REFERENCING'

# UserRole
  puts 'SETTING UP UserRole'
  UserRole.create({ :user_id => 1, :role_id => 1, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  UserRole.create({ :user_id => 1, :role_id => 2, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  UserRole.create({ :user_id => 1, :role_id => 3, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  UserRole.create({ :user_id => 2, :role_id => 3, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  UserRole.create({ :user_id => 2, :role_id => 4, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Vehicle
  puts 'SETTING UP Vehicle'
  v1 = Vehicle.create({ :fedexVehicleNumber => "71234", :fedexVehicleName => nil, :contractorNumber => "71234", :contractorName => "Carrot", :vin => "1FTZX1729WNA55381", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => p700.id, :vehicleFuel_id => gas20.id, :vehicleOdometer_id => newmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => ground.id, :business_id => business1.id }, :without_protection => true )
  v2 = Vehicle.create({ :fedexVehicleNumber => "72345", :fedexVehicleName => nil, :contractorNumber => "72345", :contractorName => "Celery", :vin => "2FTZX1729WNA55382", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => p900.id, :vehicleFuel_id => gas30.id, :vehicleOdometer_id => lowmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => ground.id, :business_id => business1.id }, :without_protection => true )
  v3 = Vehicle.create({ :fedexVehicleNumber => "73456", :fedexVehicleName => nil, :contractorNumber => "73456", :contractorName => "Onion", :vin => "3FTZX1729WNA55383", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => p1200.id, :vehicleFuel_id => diesel.id, :vehicleOdometer_id => medmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => lh.id, :business_id => business1.id }, :without_protection => true )
  v4 = Vehicle.create({ :fedexVehicleNumber => "81234", :fedexVehicleName => nil, :contractorNumber => "81234", :contractorName => "Rusty Wallace", :vin => "4FTZX1729WNA55384", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => bulk24.id, :vehicleFuel_id => diesel.id, :vehicleOdometer_id => medmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => ground.id, :business_id => business1.id }, :without_protection => true )
  v5 = Vehicle.create({ :fedexVehicleNumber => "82345", :fedexVehicleName => nil, :contractorNumber => "82345", :contractorName => "Daryl Waltrip", :vin => "5FTZX1729WNA55385", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => p1000.id, :vehicleFuel_id => diesel.id, :vehicleOdometer_id => medmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => hd.id, :business_id => business1.id }, :without_protection => true )
  v6 = Vehicle.create({ :fedexVehicleNumber => "83456", :fedexVehicleName => nil, :contractorNumber => "83456", :contractorName => "Dale Earnhardt", :vin => "6FTZX1729WNA55386", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => "Sun, 1 Apr 2012 01:01:01 -0500".to_datetime, :activeBoolean => false, :vehicleType_id => bulk26.id, :vehicleFuel_id => diesel.id, :vehicleOdometer_id => highmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => maintenance.id, :business_id => business1.id }, :without_protection => true )

# DailyDatum
  puts 'SETTING UP DailyDatum'
  ddm1 = DailyDatum.create({ :deliveryStop => 10, :deliveryPackage => 11, :pickupStop => 12, :pickupPackage => 13, :calltag => 1, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddm2 = DailyDatum.create({ :deliveryStop => 20, :deliveryPackage => 21, :pickupStop => 22, :pickupPackage => 23, :calltag => 2, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddm3 = DailyDatum.create({ :deliveryStop => 30, :deliveryPackage => 31, :pickupStop => 32, :pickupPackage => 33, :calltag => 3, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddt1 = DailyDatum.create({ :deliveryStop => 40, :deliveryPackage => 41, :pickupStop => 42, :pickupPackage => 43, :calltag => 4, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddt2 = DailyDatum.create({ :deliveryStop => 50, :deliveryPackage => 51, :pickupStop => 52, :pickupPackage => 53, :calltag => 5, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddt3 = DailyDatum.create({ :deliveryStop => 60, :deliveryPackage => 61, :pickupStop => 62, :pickupPackage => 63, :calltag => 6, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddw1 = DailyDatum.create({ :deliveryStop => 70, :deliveryPackage => 71, :pickupStop => 72, :pickupPackage => 73, :calltag => 7, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddw2 = DailyDatum.create({ :deliveryStop => 80, :deliveryPackage => 81, :pickupStop => 82, :pickupPackage => 83, :calltag => 8, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddw3 = DailyDatum.create({ :deliveryStop => 90, :deliveryPackage => 91, :pickupStop => 92, :pickupPackage => 93, :calltag => 9, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddr1 = DailyDatum.create({ :deliveryStop => 100, :deliveryPackage => 101, :pickupStop => 102, :pickupPackage => 103, :calltag => 10, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddr2 = DailyDatum.create({ :deliveryStop => 110, :deliveryPackage => 111, :pickupStop => 112, :pickupPackage => 113, :calltag => 11, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddr3 = DailyDatum.create({ :deliveryStop => 120, :deliveryPackage => 121, :pickupStop => 122, :pickupPackage => 123, :calltag => 12, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddf1 = DailyDatum.create({ :deliveryStop => 130, :deliveryPackage => 131, :pickupStop => 132, :pickupPackage => 133, :calltag => 13, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddf2 = DailyDatum.create({ :deliveryStop => 140, :deliveryPackage => 141, :pickupStop => 142, :pickupPackage => 143, :calltag => 14, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  ddf3 = DailyDatum.create({ :deliveryStop => 150, :deliveryPackage => 151, :pickupStop => 152, :pickupPackage => 153, :calltag => 15, :didNotAttempt => 0, :inboundLocalService => 98.9, :earlyPickUp => 1, :latePickUp => 0, :startTime => "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime, :endTime => "Mon, 3 Dec 2012 17:00:00 -0500".to_datetime, :created_at => "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# DailyDataEmployee
  puts 'SETTING UP DailyDataEmployee'
  DailyDataEmployee.create({ :employee_id => adam.id, :dailyDatum_id => ddm1.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => boy.id, :dailyDatum_id => ddm2.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => charles.id, :dailyDatum_id => ddm3.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => adam.id, :dailyDatum_id => ddt1.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => boy.id, :dailyDatum_id => ddt2.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => charles.id, :dailyDatum_id => ddt3.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => adam.id, :dailyDatum_id => ddw1.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => boy.id, :dailyDatum_id => ddw2.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => charles.id, :dailyDatum_id => ddw3.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => adam.id, :dailyDatum_id => ddr1.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => boy.id, :dailyDatum_id => ddr2.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => charles.id, :dailyDatum_id => ddr3.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => adam.id, :dailyDatum_id => ddf1.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => boy.id, :dailyDatum_id => ddf2.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  DailyDataEmployee.create({ :employee_id => charles.id, :dailyDatum_id => ddf3.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

