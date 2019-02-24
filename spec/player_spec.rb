require 'player'

  describe Player do
    subject(:name1) { Player.new('Name1') }
    subject(:name2) { Player.new('Name2') }

    describe '#name' do
      it 'returns the name' do
        expect(name1.name).to eq 'Name1'
      end
    end

    describe '#hit_points' do
      it 'returns the hit points' do
        expect(name1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

    describe '#attack' do
      it 'damages the player' do
        expect(name2).to receive(:receive_damage)
        name1.attack(name2)
      end
    end

    describe '#receive_damage' do
      it 'reduces the player hit points' do
        expect { name1.receive_damage }.to change { name.hit_points }.by(-10)
      end
    end

  end
