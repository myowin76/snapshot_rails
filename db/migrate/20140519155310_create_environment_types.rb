class CreateEnvironmentTypes < ActiveRecord::Migration
  def change
    create_table :environment_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
