class SfCase < ActiveRecord::Base
  has_many :case_events
  has_and_belongs_to_many :queries
end
