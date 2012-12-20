FactoryGirl.define do
	factory :user do
		name "Vincent"
		email "my@example.com"
		password "foobar"
		password_confirmation "foobar"
	end
end