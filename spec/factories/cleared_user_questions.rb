# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cleared_user_question do
    event_user_id 1
    event_question_id 1
  end
end
