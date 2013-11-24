require 'spec_helper'

describe "Static Pages" do
  
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
  end
  
  describe "Welcome page" do
<<<<<<< HEAD
    before { visit root_path }
    let(:heading)    { 'Welcome' }
    it_should_behave_like "all static pages"
  end
  
  describe "Feedback page" do
    before { visit feedback_path }
    let(:heading)    { 'Feedback' }
    it_should_behave_like "all static pages"
  end
  
  describe "Resources page" do
    before { visit resources_path }
    let(:heading)    { 'Resources' }
    it_should_behave_like "all static pages"
  end
  
  describe "Search page" do
    before { visit search_path }
    let(:heading)    { 'Search' }
    it_should_behave_like "all static pages"
=======
    
    it "should have the content 'Welcome'" do
      visit root_path
      expect(page).to have_content('Welcome')
    end
>>>>>>> layout1
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
