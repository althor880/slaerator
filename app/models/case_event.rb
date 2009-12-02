class CaseEvent < ActiveRecord::Base
  set_primary_key :case_event_id
  belongs_to :sf_case
end
