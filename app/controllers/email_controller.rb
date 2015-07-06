class EmailController < ApplicationController
  def create
    @email = Email.new(params[:name], params[:email], params[:subject], params[:message])
    UserNotifier.send_contact_email(@email).deliver_now
    flash[:message] = "Thank you! Your email has been sent."
    redirect_to root_path
  end
end
