class Profile < ActiveRecord::Base
  has_many :queries
  has_and_belongs_to_many :roles
  acts_as_authentic do |c|
  end
  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end
end
