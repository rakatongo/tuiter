require 'spec_helper'

describe "AuthenticationPages" do
 	subject { page }

 	describe "signin page" do
 		before {  visit signin_path }
 		it {  should have_selector('h1', text: 'Logueate') }

 	describe "with invalid information"	 do
 		before {  click_button "Entrar"  }

 		it {  should have_selector('title', text: 'Logueate') }
 		it {  should have_selector('div.alert.alert-error', text: 'invalida') }

 		describe "after visiting another page" do
 			before {  click_link "Home"  }
 			it {  should_not have_selector('div.alert.alert-error')  }
 		end
 	end

 	describe "with valid information" do
 		let(:user){  FactoryGirl.create(:user)  }
 		before do
 			fill_in "Email", 	with: user.email
 			fill_in "Password", 	with: user.password
 		end

 		it {  should have_selector('title', text: user.name)  }
 		it {  should have_link('Perfil',href: user_path(user))  } 
 		it {  should have_link('Salir', href: signout_path)  }
 		it { should_not have_link('Logueate', href: singin_path)  }
 	end
  end
end
