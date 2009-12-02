class CreateSfCases < ActiveRecord::Migration
  def self.up
    create_table :sf_cases, :primary_key => :sf_case_id do |t|
      t.integer :sf_case_id,		:null => false
      t.string :case_advocate_id
      t.string :case_number
      t.string :case_type
      t.timestamp :sf_closed_date
      t.timestamp :sf_created_date
      t.string :description
      t.string :sfid,			:null => false
      t.boolean :is_closed
      t.timestamp :sf_last_modified_date
      t.string :owner_id
      t.string :priority
      t.string :record_type_id
      t.string :status
      t.string :subject
      t.timestamps
    end
  end

  def self.down
    drop_table :sf_cases
  end
end
