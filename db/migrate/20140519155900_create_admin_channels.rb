class CreateAdminChannels < ActiveRecord::Migration
  def change
    create_table :admin_channels do |t|
      t.string :name

      t.timestamps
    end
  end
end
