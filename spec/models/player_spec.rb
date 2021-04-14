# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Player, type: :model do
    quiz = Quiz.create(title: 'Nice Quiz')
    lobby = Lobby.create(code: '123', current_question_index: 2, status: 2, quiz: quiz)
    
    it 'should have the hat and name fields' do
        player = described_class.new(hat: 2, name: 'Player 1', lobby: lobby)
        expect(player).to be_valid
    end

    it 'should have the name field length between 2 and 48' do
        player = described_class.new(hat: 2, name: 'P', lobby: lobby)
        expect(player).not_to be_valid
    end

    it 'should be binded to lobby' do
        player = described_class.new(hat: 2, name: 'Player 1')
        expect(player).not_to be_valid
    end
end