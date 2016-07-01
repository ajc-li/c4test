require 'lib/board.rb'

describe Board do
  let(:board) {Board.new}

  describe '#initialize' do
  	it 'raises error with no arugments' do 
  	  expect(board).to raise_error(ArgumentError)
  	end
  end

  describe '#validformat' do
  	it 'accepts valids inputs only' do
  	  expect(board.column_available?(0..6)).to eq(true)
  	end
  end

  describe '#novictory' do
  	it 'does not win at start of game' do
  	  expect(board.winning_combination?).to eq(false)
  	end
  end

  describe '#winningvertical?' do
  	it 'wins game when winning combintation vertcal is found' do
  	  board.boardx[0][0]="X"
  	  board.boardx[0][1]="X"
  	  board.boardx[0][2]="X"
  	  board.boardx[0][3]="X"
  	  board.boardx[0][4]="X"
  	  board.boardx[0][5]="X"
  	  expect(board.winning_vertical?).to eq(true)
  	end
  end

  describe '#winninghorizontal?' do
  	it 'wins games when winning combintation horizontal is found' do
  	  board.boardx[0][0]="X"
  	  board.boardx[1][0]="X"
  	  board.boardx[2][0]="X"
  	  board.boardx[3][0]="X"
  	  board.boardx[4][0]="X"
  	  board.boardx[5][0]="X"
  	  expect(board.winning_horizontal?).to eq(true)
  	end
  end

  describe '#winningdiagonal?' do
  	it 'wins game when winning combintation diagonal is found' do
  	  board.boardx[0][0]="X"
  	  board.boardx[1][1]="X"
  	  board.boardx[2][2]="X"
  	  board.boardx[3][3]="X"
  	  board.boardx[4][4]="X"
  	  board.boardx[5][5]="X"
  	  expect(board.winning_diagonal?).to eq(true)
  	end
  end	
end