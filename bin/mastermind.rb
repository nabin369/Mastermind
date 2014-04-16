#!/usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path('../../lib',__FILE__)
require 'mastermind'

game = Game.new(STDOUT)
game.start('1234')

while guess = gets.chomp
	game.guess(guess)
end
