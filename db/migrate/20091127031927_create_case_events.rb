class CreateCaseEvents < ActiveRecord::Migration
  def self.up
    create_table :case_events do |t|
      t.text :type
      t.text :description
      t.datetime :datetime
      t.text :startstatus
      t.text :endstatus
      t.text :startpriority
      t.text :endpriority
      t.datetime :nextdeadline
      t.boolean :slamet
      t.timestamps
    end
  end

  def self.down
    drop_table :case_events
  end
end
