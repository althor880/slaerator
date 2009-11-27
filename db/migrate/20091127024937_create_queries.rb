class CreateQueries < ActiveRecord::Migration
  def self.up
    create_table :queries do |t|
      t.date :startdate
      t.date :enddate
      t.boolean :closed
      t.timestamp :lastrun
      t.timestamps
    end
  end

  def self.down
    drop_table :queries
  end
end
