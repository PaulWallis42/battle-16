require 'spec_helper'
require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player1 }
  let(:player_2) { double :player2 }

    it 'takes two players on creation' do
      game = Game.new(player_1, player_2)
    end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages a player' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#turn' do

    it 'starts with Player_1' do
      expect(game.turn).to eq player_1
    end

    it 'switches the turn' do
      game.switch_turns
      expect(game.turn).to eq player_2
    end

  end

end
