class CreateSfCases < ActiveRecord::Migration
  def self.up
    create_table :sf_cases do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :sf_cases
  end
end
