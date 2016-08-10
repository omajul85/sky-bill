require 'spec_helper'

feature 'Sky bill features:' do

  let(:bill) do
    file = File.join(File.dirname(__FILE__), '..', '/support/bill.json')
    JSON.parse(File.read(file))
  end

  context 'On Home page:' do
    
    before :each do
      visit '/'
    end
  
    context 'Statement:' do
      it 'Prints the total due' do
        expect(current_path).to eq '/'
        expect(page).to have_content bill['total']
      end

      it 'Prints the billing period' do
        expect(current_path).to eq '/'
        str = "From #{bill['statement']['period']['from']} to #{bill['statement']['period']['to']}"
        expect(page).to have_content str
      end
    end

    context 'My subscriptions:' do
      it 'Prints the information about the subscriptions' do
        expect(current_path).to eq '/'
        subs = bill['package']['subscriptions'].first
        expect(page).to have_content subs['type'].capitalize
        expect(page).to have_content subs['name']
        expect(page).to have_content subs['cost']
      end
    end

    context 'Call charges:' do
      it 'Prints the information about the calls' do
        expect(current_path).to eq '/'
        call = bill['callCharges']['calls'].first
        expect(page).to have_content call['called']
        expect(page).to have_content call['duration']
        expect(page).to have_content call['cost']
      end
    end

    context 'Sky store:' do
      it 'Prints the information about the store' do
        expect(current_path).to eq '/'
        rental = bill['skyStore']['rentals'].first
        bk = bill['skyStore']['buyAndKeep'].first
        expect(page).to have_content rental['title']
        expect(page).to have_content rental['cost']
        expect(page).to have_content bk['title']
        expect(page).to have_content bk['cost']
      end
    end
  end
end