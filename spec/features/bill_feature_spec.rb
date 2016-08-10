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
  
    it 'Prints the total' do
      expect(current_path).to eq '/'
      expect(page).to have_content bill['total']
    end    
  end
end