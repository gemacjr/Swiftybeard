# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
    config.mailer_sender = 'Ed @ Swiftbeard <no-reply@swifybeard.com>'


  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 10

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true


  config.password_length = 8..72


  config.reset_password_within = 6.hours


  config.sign_out_via = :delete



require 'omniauth-facebook'
config.omniauth :facebook, '917700201679557', 'a441c3b17b3746bd41644c6d7f3a2515'
require 'omniauth-google-oauth2'
config.omniauth :google_oauth2, '724606446129-vm31va8g8cvg6023281lh3qfm24uf0i7.apps.googleusercontent.com', '1vv65AFwM_uUpIkafRFzTWls', {access_type: "offline", approval_prompt: ""}



require 'omniauth-github'
config.omniauth :github, 'ce3fe20fc376e64a1d85', '3df13faf7ec04b6b69432aa0aca3d84ac62e4502', scope: "user:email"



end
