# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Question, type: :model do
    quiz = Quiz.create(title: 'Nice quiz')

  it 'should have the title, answer type, order, points and time limit fields' do
    question = described_class.new(title: 'This is an amazing title for a question', answer_type: 2, order: 2, points: 2, time_limit: 70, quiz: quiz)
    expect(question).to be_valid
  end

  it 'should fail if title is not more than 15 chars or less than 60' do
    question = described_class.new(title: 'hello ?', answer_type: 2, order: 2, points: 2, time_limit: 70)
    expect(question).not_to be_valid
  end

  it 'should fail if not binded to quiz' do
    question = described_class.new(title: 'This is an amazing title for a question', answer_type: 2, order: 2, points: 2, time_limit: 70)
    expect(question).not_to be_valid
  end

  it 'should fail if time_limit not greater than 60' do
    question = described_class.new(title: 'This is an amazing title for a question', answer_type: 2, order: 2, points: 2, time_limit: 50)
    expect(question).not_to be_valid
  end

end