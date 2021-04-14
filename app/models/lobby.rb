class Lobby < ApplicationRecord
  validates :code, :status, :current_question_index, presence: true

  belongs_to :quiz
  has_many :players, dependent: :destroy
  validates_associated :players
end