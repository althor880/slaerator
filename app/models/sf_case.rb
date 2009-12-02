class SfCase < ActiveRecord::Base
  set_primary_key :sf_case_id
  has_many :case_events
  has_and_belongs_to_many :queries
end
