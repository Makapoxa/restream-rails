FactoryGirl.define do
  factory :task do
    name { generate :string }
  end
end
