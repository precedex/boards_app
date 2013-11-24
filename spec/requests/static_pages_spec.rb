require 'spec_helper'

describe "Static Pages" do
  
  describe "Welcome page" do
    
    it "should have the content 'Welcome'" do
      visit '/static_pages/welcome'
      expect(page).to have_content('Welcome')
    end
  end
end
