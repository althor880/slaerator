class CreateSfUsers < ActiveRecord::Migration
  def self.up
    create_table :sf_users do |t|
      t.string :first,		:null => false
      t.string :last,		:null => false
      t.string :sfid,		:null => false
      t.string :email
      t.timestamps
    end
  end

  def self.down
    drop_table :sf_users
  end
end
