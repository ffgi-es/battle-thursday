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
end
