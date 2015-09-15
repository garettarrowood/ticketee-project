FactoryGirl.define do
	factory :user do
		name "Example user"
		email "user@user.com"
		password "example_password"
		password_confirmation "example_password"
	end
end