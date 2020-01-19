# Preview all emails at http://localhost:3000/rails/mailers/list_mailer
class ListMailerPreview < ActionMailer::Preview
  def list_notification
    ListMailer.with(child: @child).list_notification
  end
end
