class CreateRecoveredVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :recovered_vehicles do |t|
      t.string :oca
      t.string :operator_name
      t.string :officer_name
      t.string :year
      t.string :make
      t.string :model
      t.string :vin
      t.string :license_plate
      t.string :color
      t.string :wrecker
      t.string :date_add
      t.string :date_remove
      t.string :remove_by

      t.timestamps
    end
  end
end
