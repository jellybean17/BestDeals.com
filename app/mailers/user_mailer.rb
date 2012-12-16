class UserMailer < ActionMailer::Base
  # default from: "from@example.com"

  def welcome_email(user)
    mail( :to       => "nikita.achatya8@gmail.com",
          :subject  => "Registered",
          :from     => "nikita.achatya8@gmail.com"
      )
  end
end
