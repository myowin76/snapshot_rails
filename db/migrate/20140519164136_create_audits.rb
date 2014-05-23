class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.date :audit_date
      t.references :store, index: true
      t.references :user, index: true
      t.integer :photos_count

      t.timestamps
    end
  end
end
