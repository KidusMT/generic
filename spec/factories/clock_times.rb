FactoryBot.define do
  factory :clock_time do
    check_in_time { "2019-09-24 14:35:02" }
    checkout_time { "2019-09-24 14:35:02" }
    remark { "MyString" }
    status { "New" }
    association :crew
  end
end
