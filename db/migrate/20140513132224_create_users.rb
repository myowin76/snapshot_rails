class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :firstname
      t.string :lastname
      t.boolean :active
      t.boolean :deleted
      t.integer :deleted_by

      t.timestamps
    end
  end
end
