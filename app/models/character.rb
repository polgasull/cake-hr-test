class Character < ApplicationRecord
  has_many :episodes

  validates :name, presence: true
  validates :status, presence: true
  validates :image, presence: true
end
