class Notifier < ActionMailer::Base
 
  default_url_options[:host] = "localhost"
  
  def password_reset_instructions(profile)
    subject "Password Reset Instructions"
    from "Binary Logic Notifier <noreply@binarylogic.com>"
    recipients profile.email
    sent_on Time.now
    body :edit_password_reset_url => edit_password_reset_url(profile.perishable_token)
  end 

end
