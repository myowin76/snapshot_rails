class CreateStoreFormats < ActiveRecord::Migration
  def change
    create_table :store_formats do |t|
      t.string :name

      t.timestamps
    end
  end
end
