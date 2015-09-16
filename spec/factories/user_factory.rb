FactoryGirl.define do
	factory :user do
		name "Example user"
		email "user@user.com"
		password "example_password"
		password_confirmation "example_password"

		factory :admin_user do
			admin true
		end
	end
end