require 'player'

describe Player do
  let(:name) { "Hisham" }

  subject { Player.new name }

  it "should return the players name" do
    expect(subject.name).to eq name
  end

  it "should return the players name" do
    player = Player.new "Alastair"
    expect(player.name).to eq "Alastair"
  end

  describe 'receiving damage' do
    it 'should have a 100 health to start' do
      expect(subject.health).to eq 100
    end
    it 'should decrease health when attacked' do
      expect{subject.reduce_health 10}.to change{subject.health}.by -10
    end
  end
end
