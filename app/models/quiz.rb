# frozen_string_literal: true

class Quiz < ApplicationRecord
  validates :title, presence: true
  validates :title, length: {minimum: 2, maximum: 50}

  has_many :questions, dependent: :destroy
  has_many :lobbies, dependent: :destroy

  validates_associated :questions
  validates_associated :lobbies
end
