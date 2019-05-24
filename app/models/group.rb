class Group < ApplicationRecord

  has_many :contacts, through: :user

end
