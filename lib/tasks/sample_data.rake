namespace :db do 
	task populate: :environment do
		admin = User.create!(name: "Ejemplo",
			email: "rakatongo1@hotmail.com",
			password: "foobar",
			password_confirmation: "foobar")
		admin.toggle!(:admin)
	end
end