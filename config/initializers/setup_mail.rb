ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "sitoursthai@gmail.com",
  :password             => "sitours2013",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

require 'development_mail_interceptor'
ActionMailer::Base.default_url_options[:host] = "sitourtravel.com"
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
