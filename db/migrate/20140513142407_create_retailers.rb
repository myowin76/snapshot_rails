class CreateRetailers < ActiveRecord::Migration
  def change
    create_table :retailers do |t|
      t.string :name
      t.references :sector, index: true

      t.timestamps
    end
  end
end
