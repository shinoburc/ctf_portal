# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    name "MyString"
    description "MyText"
    answer "MyString"
    genre_id 1
    default_point 1
    attach_filename "MyString"
    attach_file ""
  end
end
