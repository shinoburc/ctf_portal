class Group < ActiveRecord::Base
  has_many :users, through: :group_users
end