ActionMailer::Base.smtp_settings = {
:address				=> "smtp.gmail.com",
:port					=> 587,
:domain					=> "sharp-galaxy-8323.herokuapp.com",
:user_name				=> "j.knoll621@gmail.com",
:password				=> "whyiswhy42",
:authentication			=> "plain",
:enable_starttls_auto	=> true
}