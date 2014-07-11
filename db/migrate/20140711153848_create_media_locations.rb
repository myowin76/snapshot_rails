class CreateMediaLocations < ActiveRecord::Migration
  def change
    create_table :media_locations do |t|
      t.string :name

      t.timestamps
    end
  end
end
