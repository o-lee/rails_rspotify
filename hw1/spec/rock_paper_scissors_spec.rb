require 'rock_paper_scissors'
require 'byebug'

describe RockPaperScissors do
  before(:each) do
    @rock = ['Armando', 'R'] ; @paper = ['Dave', 'P'] ; @scissors = ['Sam', 'S']
  end
  describe 'game' do
    it 'rock breaks scissors' do
      expect(RockPaperScissors.winner(@rock, @scissors)).to eq(@rock)
  end
end 

