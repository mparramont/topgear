class CreateLaps < ActiveRecord::Migration
  def change
    create_table :laps do |t|
      t.string :brand
      t.string :model
      t.integer :time

      t.timestamps
    end
  end
end
