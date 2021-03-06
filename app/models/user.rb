class User < ApplicationRecord
  has_many :events, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }
end
