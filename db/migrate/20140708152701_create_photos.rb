class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :audit, index: true
      t.string :headline
      t.boolean :published

      t.timestamps
    end
  end
end
