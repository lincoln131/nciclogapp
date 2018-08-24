class CreateParkingCitaions < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_citaions do |t|
      t.string :book_num
      t.string :issued_to
      t.string :start_c_num
      t.string :end_c_num
      t.string :issue_date
      t.string :issue_by
      t.string :return_date
      t.text :return_by
      t.string :empty

      t.timestamps
    end
  end
end
