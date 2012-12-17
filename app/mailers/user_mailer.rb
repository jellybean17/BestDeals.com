class UserMailer < ActionMailer::Base
  default :from => "no.reply.bestdeals@gmail.com"
  def welcome_email(customer)
    @customer = customer
    mail( :to       => customer.email_id,
          :subject  => "Registered",
         
      )
  end
end
