class CreateUsersRoles < ActiveRecord::Migration
  def change
    create_table :roles_users do |t|
      t.references :role, index: true
      t.references :user, index: true
    end
  end
end
