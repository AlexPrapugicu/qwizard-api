class Question < ApplicationRecord
  validates :answer_type, :order, :points, :time_limit, :title , presence: true
  validates :title, length: {minimum: 15, maximum: 60}
  validates :time_limit, numericality: {greater_than: 60}

  belongs_to :quiz
  has_many :answers,dependent: :destroy
  validates_associated :answers
end