class InvitationMailer < ApplicationMailer
  default from: "from@example.com"
  def event_invite(emails,event)
    @event = event
    mail(to: emails, subject: 'New Event Opened')
  end
end
