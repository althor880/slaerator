class CreateSalesforceRecordTypes < ActiveRecord::Migration
  def self.up
    create_table :salesforce_record_types do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :salesforce_record_types
  end
end
