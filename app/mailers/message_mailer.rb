class MessageMailer < ApplicationMailer

  def send_email(message)
    @message = message
    mail(:to => "atasker2@gmail.com", :subject => "You have a new message from #{message.name}")
  end

end
