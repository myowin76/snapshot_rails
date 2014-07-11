class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user, index: true
      t.text :countries
      t.text :sectors
      t.text :retailers
      t.text :categories
      t.text :projects

      t.timestamps
    end
  end
end
