#!/usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path('../../lib',__FILE__)
require 'mastermind'

def generate_secret_code
	options = %w[1 2 3 4 5 6]
	(1..4).map { options.delete_at(rand(options.length))}.join
end

game = Game.new(STDOUT)
secret_code = generate_secret_code
at_exit { puts "\n********************\nThe secret code was: #{secret_code}\n*********************"}

game.start(secret_code)

while guess = gets.chomp
	game.guess(guess)
end
