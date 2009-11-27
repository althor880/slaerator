class CreateRolesRights < ActiveRecord::Migration
  def self.up
    create_table "roles_rights", :id => false do |t|
      t.column "role_id", :integer
      t.column "right_id", :integer
    end
    add_index "roles_rights", "role_id"
    add_index "roles_rights", "right_id"
  end

  def self.down
    drop_table "roles_rights"
  end
end
