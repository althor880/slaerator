# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_slaerator_session',
  :secret      => 'b070d8b1acb5da0af97066154901c0605969b63c41e17bc56d9ec7d804dbe069ec0a903e488b34d3f530dd3c66d81639fbd405d7d174eea92bd695fcfed993ec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
