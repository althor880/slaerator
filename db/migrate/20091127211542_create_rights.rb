class CreateRights < ActiveRecord::Migration
  def self.up
    create_table :rights do |t|
      t.text :name,		:null => false
      t.text :description
      t.text :controllername
      t.text :actionname
      t.timestamps
    end
  end

  def self.down
    drop_table :rights
  end
end