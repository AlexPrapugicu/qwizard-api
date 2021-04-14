class Answer < ApplicationRecord
  validates :is_correct, :title, presence: true
  validates :title, length: {minimum: 2, maximum: 140}
  
  belongs_to :question
  has_many :player_answers, dependent: :destroy
  validates_associated :player_answers
end