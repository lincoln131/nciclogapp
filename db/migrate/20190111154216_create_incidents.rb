class CreateIncidents < ActiveRecord::Migration[5.1]
  def change
    create_table :incidents do |t|
      t.string :date
      t.string :coworker
      t.string :description

      t.timestamps
    end
  end
end
