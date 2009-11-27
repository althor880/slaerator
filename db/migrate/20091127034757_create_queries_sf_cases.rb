class CreateQueriesSfCases < ActiveRecord::Migration
  def self.up
    create_table "queries_sf_cases", :id => false do |t|
      t.column "query_id", :integer
      t.column "sf_case_id", :integer
    end
    add_index "queries_sf_cases", "query_id"
    add_index "queries_sf_cases", "sf_case_id"
  end

  def self.down
    drop_table "queries_sf_cases"
  end
end
