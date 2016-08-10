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
  
    it 'Prints the total due' do
      expect(current_path).to eq '/'
      expect(page).to have_content bill['total']
    end

    it 'Prints the billing period' do
      expect(current_path).to eq '/'
      str = "From #{bill['statement']['period']['from']} to #{bill['statement']['period']['to']}"
      expect(page).to have_content str
    end

    it 'Does not print the list of calls (hidden by default)' do
      expect(current_path).to eq '/'
      find(:css, "#charges").should_not be_visible
    end

    it 'Prints the list of calls if button clicked' do
      expect(current_path).to eq '/'
      click_button('charges')
      expect(page).to have_content "List of calls"
    end
  end
end