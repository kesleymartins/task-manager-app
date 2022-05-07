class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 3 }

  scope :completed, -> { where(done: true) }
  scope :uncompleted, -> { where(done: false) }
  scope :by_user, ->(user) { where(user_id: user)}
end
