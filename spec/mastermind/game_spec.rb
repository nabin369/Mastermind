require 'spec_helper'

describe Game do

	describe "#start" do
		it "sends a welcome message" do
			output = double('output').as_null_object
			game = Game.new(output) 

			output.should_receive(:puts).with('Welcome to Mastermind!')
			game.start
		end

		it "prompts for the first guess" do
			output = double('output').as_null_object
			game = Game.new(output)

			output.should_receive(:puts).with("Enter guess:")
			game.start
		end

	end
end  
