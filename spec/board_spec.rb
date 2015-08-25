require 'connect4'
require 'spec_helper'

Describe Board do
  let (Board) {Board.new}

  it "knows last drop coordinate" do
    board.drop(:x, 0)

    expect(board.last_x).to eq(0)
    expect(board.last_y).to eq(0)
  end

  
end
