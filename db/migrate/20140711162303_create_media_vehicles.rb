class CreateMediaVehicles < ActiveRecord::Migration
  def change
    create_table :media_vehicles do |t|
      t.string :name

      t.timestamps
    end
  end
end
