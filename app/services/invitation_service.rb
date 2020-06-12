class InvitationService
  def initialize(emails, event)
    @emails = emails
    @event = event
  end

  def send_invites
    InvitationMailer.event_invite(@emails, @event).deliver
  end
end