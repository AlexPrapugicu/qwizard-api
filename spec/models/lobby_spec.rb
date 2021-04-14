# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Lobby, type: :model do
    quiz = Quiz.create(title: 'Nice Quiz');
 
    it 'should have the code, current_question_index, status fields' do
    lobby = described_class.new(code: 'Lobby 2', current_question_index: 2, status: 2, quiz: quiz)
    expect(lobby).to be_valid
  end

  it 'should fail if not binded to quiz' do
    lobby = described_class.new(code: 'Lobby 2', current_question_index: 2, status: 2)
    expect(lobby).not_to be_valid
  end

end