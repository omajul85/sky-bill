require 'spec_helper'

feature 'Sky bill features:' do

  context 'On Home page:' do
    
    before :each do
      visit '/'
    end
  
    it 'Prints Hello World!' do
      expect(current_path).to eq '/'
      expect(page).to have_content 'Hello World!'
    end    
  end
end