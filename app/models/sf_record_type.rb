class SfRecordType < ActiveRecord::Base
  set_primary_key :sf_record_type_id
  has_and_belongs_to_many :queries
end
