class CreateSeparations < ActiveRecord::Migration[5.1]
  def change
    create_table :separations do |t|
      t.string :officer
      t.string :callsign
      t.boolean :ad
      t.boolean :email
      t.boolean :rms_login
      t.boolean :rms_seperation
      t.boolean :switch
      t.boolean :cad_login
      t.boolean :dci
      t.boolean :ncaware
      t.boolean :cjleads
      t.boolean :edotcom
      t.boolean :leads
      t.boolean :accurint
      t.boolean :cardkey
      t.boolean :pwgate
      t.boolean :linx
      t.boolean :lexipol

      t.timestamps
    end
  end
end
