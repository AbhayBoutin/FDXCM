class ProductionPay < ActiveRecord::Base
  attr_accessible :activeBoolean, :delivery_package_pay, :delivery_stop_pay, :endDate, :hourly_pay, :incident_dock_pay, :pickup_package_pay, :pickup_stop_pay, :startDate, :task_pay
end
