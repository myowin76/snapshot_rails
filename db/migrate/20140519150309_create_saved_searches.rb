class CreateSavedSearches < ActiveRecord::Migration
  def change
    create_table :saved_searches do |t|
      t.string :name
      t.text :value
      t.references :user, index: true

      t.timestamps
    end
  end
end
