FactoryGirl.define do
  factory :skill do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    skill_category
    rate_type 'range'
  end
end
