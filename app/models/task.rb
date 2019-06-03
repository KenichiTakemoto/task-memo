class Task < ApplicationRecord
  validates :name, presence: true
  validates :name, length:{maximum: 30}
  belongs_to :user
  has_one_attached :image
  scope :recent, -> {order(created_at: :desc) }
end
