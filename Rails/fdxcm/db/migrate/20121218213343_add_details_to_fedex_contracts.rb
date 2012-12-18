class AddDetailsToFedexContracts < ActiveRecord::Migration
  def change
    add_column :fedex_contracts, :deliveryStopPay, :decimal
    add_column :fedex_contracts, :deliveryPackagePay, :decimal
    add_column :fedex_contracts, :pickupStopPay, :decimal
    add_column :fedex_contracts, :pickupPackagePay, :decimal
    add_column :fedex_contracts, :coreZoneSupplementalPay, :decimal
    add_column :fedex_contracts, :vehicleAvailabilityPay, :decimal
    add_column :fedex_contracts, :fuelSupplementPay, :decimal
    add_column :fedex_contracts, :toolRentalCost, :decimal
    add_column :fedex_contracts, :internationalPackagePay, :decimal
    add_column :fedex_contracts, :hazardousPackagePay, :decimal
    add_column :fedex_contracts, :vacationProgramCost, :decimal
    add_column :fedex_contracts, :uniformCost, :decimal
  end
end
