require 'spec_helper'

describe "StaticPages" do
  subject { page }
  
  describe "Home pages"  do

    before { visit root_path  }

   	 	it { should have_selector 'h1', text: 'Bienvenido' }
   		 it { should have_selector'title', text: 'Ruby on Rails Tutorial Sample App'}
             
  end


  describe "Help page" do
    before { visit help_path}

    it { should have_selector 'h1', text: 'Help'}
    it { should have_selector 'title', text: 'Help'}

    
  end
	describe "About Page" do
    before { visit about_path }

    it { should have_selector 'title', text: 'About'}
    it { should have_selector 'h1', title: 'About Us'}
		
  end
  describe "Contact Page" do
    before { visit contact_path}
    it { should have_selector 'title', text: 'Contact'}
    it { should have_selector 'h1', text: 'Contact Us'}
    
  end

end