class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniquiness: true

end
