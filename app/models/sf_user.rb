class SfUser < ActiveRecord::Base
  set_primary_key :sf_user_id
  has_and_belongs_to_many :queries
end
