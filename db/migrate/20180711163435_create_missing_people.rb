class CreateMissingPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :missing_people do |t|
      t.string :oca
      t.string :operator_name
      t.string :officer_name
      t.string :ncic_num
      t.string :missing_f_name
      t.string :missing_l_name
      t.string :missing_dob
      t.string :missing_race
      t.string :missing_sex
      t.string :owner_name
      t.string :owner_phone
      t.string :date_add
      t.string :date_remove
      t.string :remove_by

      t.timestamps
    end
  end
end
