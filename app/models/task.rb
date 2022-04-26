class Task < ApplicationRecord
  validates :title, presence: true, length: { minimun: 3 }
end
