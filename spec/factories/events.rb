# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    description "MyText"
    start_datetime "2014-02-16 17:07:29"
    end_datetime "2014-02-16 17:07:29"
  end
end
