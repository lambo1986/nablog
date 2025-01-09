require 'rails_helper'

RSpec.describe SubscriberMailer, type: :mailer do
    describe 'welcome_email' do
        let(:subscriber) { create(:subscriber, email: 'lambertones@gmail.com') }
        let(:mail) { SubscriberMailer.welcome_email(subscriber) }

        it 'renders the headers' do
            expect(mail.subject).to eq("Welcome to Nathan's Junkyard!")
            expect(mail.to).to eq(['lambertones@gmail.com'])
            expect(mail.from).to eq(['no-reply@nablog.com'])
        end

        it 'renders the body' do
        expect(mail.body.encoded).to match("Welcome to Nathan's Junkyard")
        end
    end
end
