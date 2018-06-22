class User < ApplicationRecord
  validates :phone, presence: true, uniqueness: true

  has_secure_password
end
