require 'game'

describe Game do
  let(:dave) { double :player }
  let(:mittens) { double :player }
  subject(:game) { Game.new(dave, mittens) }
  
  describe '#attack' do
    it 'reduces health of the victim' do
    expect(mittens).to receive(:reduce_health)
    game.attack(mittens)
    end
  end
end
