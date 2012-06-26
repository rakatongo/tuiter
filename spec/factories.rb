FactoryGirl.define do 
	factory :user do
		name		"Rakungo"
		email		"riot@example.com"
		password 	"foobar"
		password_confirmation "foobar"
	end
end