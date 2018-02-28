
Devise.setup do |config|
  config.mailer_sender = ENV["EMAIL_ACCOUNT"]

  require 'devise/orm/active_record'

  # config.omniauth :facebook, ENV["FB_APP_ID"], ENV["FB_SECRET"], callback_url: ENV["FB_CALLBACK"]
  # , callback_path: "https://hh2.herokuapp.com/users/auth/facebook/callback"

  config.omniauth :facebook, ENV["FB_APP_ID"], ENV["FB_SECRET"], scope: "email"


  config.case_insensitive_keys = [:email]

  # Configure which authentication keys should have whitespace stripped.
  # These keys will have whitespace before and after removed upon creating or
  # modifying a user and when used to authenticate or find a user. Default is :email.
  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  # Email regex used to validate email formats. It simply asserts that
  # one (and only one) @ exists in the given string. This is mainly
  # to give user feedback and not to assert the e-mail validity.
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

end
