class Role < ActiveRecord::Base
  set_primary_key :role_id
  has_and_belongs_to_many :profiles
  has_and_belongs_to_many :rights
end
