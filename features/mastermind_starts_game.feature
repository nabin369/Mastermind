Feature: Mastermind starts game

	As a mastermind
	I want to start a game
	So that I can break the code

	Scenario: start game
		Given I am not yet playing
		When I start a new game
		Then I should see "Welcome to Mastermind!"
		And I should see "Enter guess:"

