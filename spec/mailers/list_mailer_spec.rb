require "rails_helper"

RSpec.describe ListMailer, type: :mailer do
  describe "list_notification" do
    let(:mail) { ListMailer.list_notification }

    it 'sends an email to pierlot.julien@gmail.com' do
      expect(mail.to).to eq("pierlot.julien@gmail.com")
    end
  end
end
