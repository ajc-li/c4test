require 'lib/board.rb'

describe Board do
  let(:board) {Board.new}

  describe '#initialize' do
  	it 'raises error with no arugments' do 
  	  expect(board).to raise_error(ArgumentError)
  	end
  end

  # describe '#add piece' do
  # 	it 'adds piece properly' do
  # 	  expect(board)
  # 	end

  describe '#validformat' do
  	it 'accepts valids inputs only' do
  	  expect(board.column_available?(0..6)).to eq(true)
  	end
  end

  # describe '#invalidformat' do
  # 	it 'rejects invalid formats' do
  # 	  expect(board.column_available?(=<0)).to eq(false)
  # 	  expect(board.column_available?(>=6)).to eq(false)
  # 	end

  describe '#novictory' do
  	it 'does not win at start of game' do
  	  expect(board.winning_combination?).to eq(false)
  	end
  end

  describe '#winningvertical?' do
  	it 'wins game when winning combintation vertcal is found' do
  	  expect(board.winning_vertical?).to eq(true)
  	end
  end

  describe '#winninghorizontal?' do
  	it 'wins games when winning combintation horizontal is found' do
  	  expect(board.winning_horizontal?).to eq(true)
  	end
  end

  describe '#winningdiagonal?' do
  	it 'wins game when winning combintation diagonal is found' do
  	  expect(board.winning_diagonal?).to eq(true)
  	end
  end	
end