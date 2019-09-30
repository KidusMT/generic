FactoryBot.define do
  factory :crew do
    name { FFaker::Name.name }
    telephone { FFaker::Name.name }
  end
end
