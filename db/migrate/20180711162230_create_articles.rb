class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :oca
      t.string :operator_name
      t.string :officer_name
      t.string :ncic_num
      t.string :make
      t.string :model
      t.string :serial
      t.text :description
      t.string :owner_name
      t.string :owner_phone
      t.string :date_add
      t.string :date_remove
      t.string :remove_by

      t.timestamps
    end
  end
end
