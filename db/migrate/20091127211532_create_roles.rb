class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles, :primary_key => :role_id do |t|
      t.integer :role_id,	:null => false
      t.text :name
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
