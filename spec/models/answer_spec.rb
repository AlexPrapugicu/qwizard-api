# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Answer, type: :model do
    quiz = Quiz.create(title: 'Nice Quiz')
    question = Question.create(title: 'This is an amazing title for a question', answer_type: 2, order: 2, points: 10, time_limit: 70, quiz: quiz)

    it 'should have the is_correct and title field' do
        answer = described_class.new(title: 'Yes', is_correct: true, question: question)
        expect(answer).to be_valid
     end

     it 'should have title field length between 2 and 140' do
        answer = described_class.new(title: 'Y', is_correct: true, question: question)
        expect(answer).not_to be_valid
     end

    it "should fail if there's no question for this answer" do
        answer = described_class.new(title: 'Test', is_correct: true)
        expect(answer).not_to be_valid
    end
end