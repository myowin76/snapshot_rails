class CreateAdminEnvironmentTypes < ActiveRecord::Migration
  def change
    create_table :admin_environment_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
