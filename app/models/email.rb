class Email
  attr_reader :name, :email_address, :subject, :message

  def initialize(name, email_address, subject, message)
    @name = name
    @email_address = email_address
    @subject = subject
    @message = message
  end
end
