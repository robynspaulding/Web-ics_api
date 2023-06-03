class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :comments 
  has_many :comics, through: :comments
end
