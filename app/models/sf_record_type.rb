class SfRecordType < ActiveRecord::Base
  has_and_belongs_to_many :queries
end
