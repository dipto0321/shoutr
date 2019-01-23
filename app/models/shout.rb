class Shout < ApplicationRecord
  belongs_to :user
  validates :body, presence: true, length: { in: 5..150 }
  validates :user, presence: true
end
