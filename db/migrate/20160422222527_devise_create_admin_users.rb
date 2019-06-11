class DeviseCreateAdminUser < ActiveRecord::Migration
  def self.up
    create_table(:admin_users) do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.datetime :remember_created_at
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :admin_users
  end
end
