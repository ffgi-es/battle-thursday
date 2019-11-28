require 'game'

describe Game do
  let(:player_1) { double :player1, receive_damage: nil }
  let(:player_2) { double :player2, receive_damage: nil }

  subject { Game.new player_1, player_2 }

  it "should have an attack method" do
    expect(player_2).to receive(:reduce_health).with 10
    subject.attack
  end
end
