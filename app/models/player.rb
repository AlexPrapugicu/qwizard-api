class Player < ApplicationRecord
  validates :hat, :name, presence: true
  validates :name, length: {minimum: 2, maximum: 48}

  belongs_to :lobby
  has_many :player_answers, dependent: :destroy
  validates_associated :player_answers
end