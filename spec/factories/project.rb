FactoryGirl.define do
  factory :project do
    sequence(:name) { |i| "#{Faker::Internet.domain_word}_#{i}" }
    end_at { 30.days.from_now }
    archived false
    project_type { Project::POSSIBLE_TYPES[rand(2)] }

    factory :project_deleted do
      deleted_at Time.now
    end

    factory :invalid_project do
      name nil
    end

    trait :potential do
      potential true
    end

    trait :archived do
      archived true
    end

    trait :without_due_date do
      end_at nil
    end

    trait :commercial do
      internal false
    end

    trait :internal do
      internal true
    end
  end
end
