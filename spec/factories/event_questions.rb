# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event_question do
    order_number 1
    point 1
    event_id 1
    question_id 1
  end
end
