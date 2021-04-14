# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PlayerAnswer, type: :model do

  it 'should be binded to player and answer' do
    quiz = Quiz.create(title: 'Nice quiz')
    question = Question.create(title: 'Do we even play or are we messing around ?', answer_type: 2, order: 2, points: 10, time_limit: 99, quiz: quiz)
    answer = Answer.create(title: 'Yes we do', is_correct: true, question: question)
    lobby = Lobby.create(code: 'Lobby 2', current_question_index: 2, status: 2, quiz: quiz)
    player = Player.create(hat: 2, name: 'Player 2', lobby: lobby)
    player_answer = described_class.new(answer: answer, player: player)
    expect(player_answer).to be_valid
  end

end