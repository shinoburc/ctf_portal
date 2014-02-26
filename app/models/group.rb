class Group < ActiveRecord::Base
  has_many :users, through: :group_users

  has_secure_password
end
