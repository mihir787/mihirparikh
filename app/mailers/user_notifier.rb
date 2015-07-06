class UserNotifier < ApplicationMailer
  def send_contact_email(email)
    @email = email
    mail( :from => @email.email_address, :to => "mihir787@gmail.com",
    :subject => @email.subject )
  end
end
