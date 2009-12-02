class Right < ActiveRecord::Base
  set_primary_key :right_id
  has_and_belongs_to_many :roles
end
