class User < ApplicationRecord
  has_many :tasks

  authenticates_with_sorcery!

  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
