class Query < ActiveRecord::Base
  set_primary_key :query_id
  belongs_to :profile
  has_and_belongs_to_many :sf_users
  has_and_belongs_to_many :sf_record_types
  has_and_belongs_to_many :sf_cases
end
