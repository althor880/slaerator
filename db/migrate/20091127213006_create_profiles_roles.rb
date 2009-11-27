class CreateProfilesRoles < ActiveRecord::Migration
  def self.up
    create_table "profiles_roles", :id => false do |t|
      t.column "profile_id", :integer
      t.column "role_id", :integer
    end
    add_index "profiles_roles", "profile_id"
    add_index "profiles_roles", "role_id"
  end

  def self.down
    drop_table "profiles_roles"
  end
end
