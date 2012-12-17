
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => "no.reply.bestdeals",
  :password             => "jellybean17",
  :authentication       => "plain",
  :enable_starttls_auto => true}