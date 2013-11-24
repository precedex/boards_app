require 'spec_helper'

describe "Static Pages" do
  
  describe "Welcome page" do
    
    it "should have the content 'Welcome'" do
      visit root_path
      expect(page).to have_content('Welcome')
    end
  end
    
    describe "Feedback page" do
    
      it "should have the content 'Feedback'" do
        visit feedback_path
        expect(page).to have_content('Feedback')
      end   
    end
    
    describe "Resources page" do
    
      it "should have the content 'Resources'" do
        visit feedback_path
        expect(page).to have_content('Resources')
      end   
    end
    
    describe "Search page" do
    
      it "should have the content 'Search'" do
        visit feedback_path
        expect(page).to have_content('Search')
      end   
    end
end
