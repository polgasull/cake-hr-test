class Episode < ApplicationRecord
  belongs_to :character

  validates :number, presence: true
end
