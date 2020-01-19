class ListMailer < ApplicationMailer
  default from: 'pierlot.julien@gmail.com'

  def list_notification
    @child = params[:child]
    mail(to: 'pierlot.julien@gmail.com', subject: 'A new list is available')
  end

end
