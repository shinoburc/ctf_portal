
rails g devise:install
rails g devise user
rails g rails_admin:install

rails generate model event_user event_id:integer user_id:integer
rails generate model group_user group_id:integer user_id:integer
rails generate model cleared_user_question event_user_id:integer event_question_id:integer
rails generate model event_question order_number:integer point:integer event_id:integer question_id:integer
rails generate model settings name:string value:string
rails generate model genre name:string
rails generate model event name:string description:text start_datetime:datetime end_datetime:datetime

rails generate scaffold group name:string description:text
rails generate scaffold question name:string description:text answer:string genre_id:integer default_point:integer attach_filename:string attach_file:binary

