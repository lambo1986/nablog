require 'rails_helper'

RSpec.describe SubscriberMailer, type: :mailer do
    describe 'welcome_email' do
        let(:subscriber) { create(:subscriber, email: 'test@example.com') }
        let(:mail) { SubscriberMailer.welcome_email(subscriber) }

        it 'renders the headers' do
            expect(mail.subject).to eq("Welcome to Nathan's Junkyard!")
            expect(mail.to).to eq(['test@example.com'])
            expect(mail.from).to eq(['default_from@example.com']) # Replace with your actual "from" email
        end

        it 'renders the body' do
        expect(mail.body.encoded).to match("Welcome to Nathan's Junkyard")
        end
    end
end
