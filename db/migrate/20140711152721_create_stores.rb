class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :address3
      t.string :town
      t.string :postcode
      t.references :store_format, index: true
      t.references :retailer, index: true
      t.references :country, index: true
      t.references :environment_type, index: true
      t.references :channel, index: true
      t.decimal :longitude
      t.decimal :latitude
      t.text :description

      t.timestamps
    end
  end
end
