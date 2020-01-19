require 'sidekiq'

class ListWorker
  include Sidekiq::Worker

  def perform(child)
    ListMailer.with(child: child).list_notification.deliver_now
  end

end
