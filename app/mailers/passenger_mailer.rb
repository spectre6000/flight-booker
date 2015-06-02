class PassengerMailer < ApplicationMailer

  default from: 'notifications@example.com'

  def thank_you_email(passenger)
    @passenger = passenger
    @url = 'http://localhost:3000/'
    mail(to: @passenger.email, subject: 'Thank you for using Flight-Booker')
  end
end
