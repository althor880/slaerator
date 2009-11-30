class CreateSfRecordTypes < ActiveRecord::Migration
  def self.up
    create_table :sf_record_types do |t|
      t.text :name, 		:null => false
      t.text :sfid, 		:null => false
      t.boolean :active, 	:null => false, :default => true
      t.boolean :sla, 		:null => false, :default => false
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :sf_record_types
  end
end
