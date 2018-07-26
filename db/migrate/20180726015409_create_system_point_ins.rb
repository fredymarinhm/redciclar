class CreateSystemPointIns < ActiveRecord::Migration[5.0]
  def change
    create_table :system_point_ins do |t|
      t.datetime :date
      t.integer :amount

      t.timestamps
    end
  end
end
