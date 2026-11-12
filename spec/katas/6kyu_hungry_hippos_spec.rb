require "katas/6kyu_hungry_hippos"

describe "Basic tests" do
  it "Basic test cases" do
    board = [[1,1,0,0,0],
             [1,1,0,0,0],
             [0,0,0,0,0],
             [0,0,0,1,1],
             [0,0,0,1,1]]
    game = Game.new(board)
    expect(game.play()).to eq 2

    board = [[1,0,1,0,1],
             [1,0,1,0,1],
             [1,1,1,0,0],
             [0,0,0,1,1],
             [0,0,0,1,1]]
    game = Game.new(board)
    expect(game.play()).to eq 3

    board = [[1,0,1,0,1],
             [0,1,0,1,0],
             [1,0,1,0,1],
             [0,1,0,1,0],
             [1,0,1,0,1]]
    game = Game.new(board)
    expect(game.play()).to eq 13

    board = [[1,0,0,0,0],
             [0,0,1,1,0],
             [1,0,1,0,1],
             [1,1,1,1,0],
             [1,1,1,0,1]]
    game = Game.new(board)
    expect(game.play()).to eq 4
  end
end

describe "Extra edge cases" do
  it "needs no leaps on an empty board" do
    board = Array.new(5) { Array.new(5, 0) }
    expect(Game.new(board).play).to eq 0
  end

  it "needs one leap when all food is connected" do
    board = Array.new(5) { Array.new(5, 1) }
    expect(Game.new(board).play).to eq 1
  end

  it "handles a large board and does not blow the stack" do
    board = Array.new(50) { Array.new(50, 1) }
    expect(Game.new(board).play).to eq 1
  end

  it "does not modify the board it was given" do
    board = [[1,1,0,0,0],
             [1,1,0,0,0],
             [0,0,0,0,0],
             [0,0,0,1,1],
             [0,0,0,1,1]]
    copy = board.map(&:dup)
    Game.new(board).play
    expect(board).to eq copy
  end
end
