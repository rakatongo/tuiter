require 'spec_helper'

describe "StaticPages" do
  
  describe "Home pages"  do

   	 	it "should have the h1 'Sample App'" do
     	 visit '/static_pages/home'
      	page.should have_selector('h1', 
          :text => "Sample App")
   		 end
      
       it "should have the base title " do
        visit '/static_pages/home'
        page.should have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App")
 	    end
  end
  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', text:  'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Help")
    end
  end
	describe "About Page" do

		it "should have the title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title',
        :text => "About")
		end

    it "should have the h1 selector 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1',
        :text => "About Us")
	 end
  end
  describe "Contact Page" do

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
        :text => "Contact Us")
    end
    it "should have the h1 selector 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1',
        :text => "Contact Us")
    end
  end

end