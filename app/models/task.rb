class Task < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }

  scope :completed, -> { where(done: true) }
  scope :uncompleted, -> { where(done: false) }
end
