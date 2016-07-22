require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) {double :player}
  let(:player_2) {double :player}


describe '#player_1' do
  it 'retrieves the first player' do
    expect(game.players.first).to eq player_1
  end
end

describe '#player_2' do
  it 'retrieves the second player' do
    expect(game.players.last).to eq player_2
  end
end

describe '#current_player' do
    it 'starts as player 1' do
      expect(game.current_player).to eq player_1
    end
  end

describe '#gameover' do
    it 'confirms game is over when a player reaches 0HP' do
      allow(player_1).to receive(:hit_points).and_return(0)
      allow(player_2).to receive(:hit_points).and_return(0)
      expect(game.gameover?).to be true
    end
end


end
