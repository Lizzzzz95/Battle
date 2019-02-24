require 'player'

  describe Player do
    subject(:name1) { Player.new('Name1') }

    describe '#name' do
      it 'returns the name' do
        expect(name1.name).to eq 'Name1'
      end
    end

  end
