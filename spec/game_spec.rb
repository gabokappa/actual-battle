require 'game'
require 'player'

describe Game do
  let(:dave) { double :player }
  let(:mittens) { double :player }
  subject(:game) { Game.new(dave, mittens) }

  describe '#player1' do
    it 'retrieves player1' do
      expect(game.player1).to eq dave
    end
  end

  describe '#player2' do
    it 'retrieves player2' do
      expect(game.player2).to eq mittens
    end
  end


  describe '#attack' do
    it 'reduces health of the victim' do
    expect(mittens).to receive(:reduce_health)
    game.attack(mittens)
    end
  end

  describe '#switch_turn' do
    it 'switches the "opponent"' do
      game.switch_turn
      expect(game.opponent).to eq game.player1
    end
  end

end
