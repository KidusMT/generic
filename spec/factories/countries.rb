FactoryBot.define do
  factory :country do
    code { FFaker::Name.name }
    name { FFaker::Name.name }
  end
end
