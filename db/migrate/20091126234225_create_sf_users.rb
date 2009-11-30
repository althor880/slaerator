class CreateSfUsers < ActiveRecord::Migration
  def self.up
    create_table :sf_users do |t|
      t.string :email
      t.string :first_name
      t.string :sfid,		:null => false
      t.string :last_name
      t.string :name
      t.string :username
      t.timestamps
    end
  end

  def self.down
    drop_table :sf_users
  end
end
