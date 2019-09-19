FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
	  last_name { Faker::Name.last_name }
    username { Faker::Internet.username }
	  email { Faker::Internet.email }
	  phone { Faker::PhoneNumber.phone_number }
    password { Faker::Internet.password }
	  trait :admin do
	    admin { true }
	  end
  end
end
