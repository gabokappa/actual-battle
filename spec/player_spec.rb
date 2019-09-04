require 'player'

describe Player do
    subject(:dave) { Player.new('Dave') }
    subject(:mittens) { Player.new('Mittens') }

    describe '#name' do
      it 'returns the name' do
      expect(dave.name).to eq('Dave')
    end
    end

    describe '#hp' do
      it 'returns the health value' do
        expect(dave.hp).to eq 100
      end
    end

    describe '#reduce_health' do
      it' reduces hp by 10' do
      expect { dave.reduce_health }.to change { dave.hp}.by -10
    end
  end

end
