# Kata: Hungry Hungry Hippos   (6 kyu – difficulty is my estimate, adjust to Codewars)
# Run: rspec spec/katas/6kyu_hungry_hippos_spec.rb
#
# Introduction
#   Hungry Hungry Hippos is a tabletop game for 2-4 players, produced by Hasbro under its
#   subsidiary Milton Bradley. The idea was published in 1967 by toy inventor Fred Kroll and
#   introduced in 1978. The objective is for each player to collect as many marbles as possible
#   with their 'hippo' (a toy hippo model). (Source: Wikipedia)
#
# Task
#   Write a simple class called Game that checks how many times a hippo has to leap into the
#   centre of the arena to collect some food. You are given an integer array called board that
#   defines where all the food can be found. Return an integer: the number of leaps the hippo
#   needs to eat all of the food.
#
# Rules
#   1. The board contains 0's for spaces and 1's for food.
#   2. The board is n x n in size, where n is between 5 and 50.
#   3. One leap consists of food items that are horizontally or vertically connected to each
#      other. If they are not connected, another leap is needed.
#
# Returns
#   An integer: the number of leaps needed to collect all of the food.
#
# Example
#   board = [[1,1,0,0,0],
#            [1,1,0,0,0],
#            [0,0,0,0,0],
#            [0,0,0,1,1],
#            [0,0,0,1,1]]
#
#   game = Game.new(board)
#   game.play()   # => 2

class Game
  def initialize(board)
    @board = board
  end

  def play()
    # Code here
  end
end
