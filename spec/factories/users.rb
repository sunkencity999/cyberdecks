FactoryBot.define do

	factory :user do
		name { "name"}
		sequence(:email){|n| "user#{n}@factory.com"}
		password {"password"} 
		password_confirmation {"password"}
		role {:member}
	end
end
