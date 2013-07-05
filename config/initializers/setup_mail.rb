ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "sawangpongm@gmail.com",
  :password             => "s,uiydgvb',kd",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

#require 'development_mail_interceptor'
#ActionMailer::Base.default_url_options[:host] = "sitourtravel.com"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
