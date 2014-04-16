Feature: Mastermind submits guess

	The mastermind submits a guess of four numbers. The game marks the guess with + and - signs.

	For each number in the guess that matches the position and numbers of the secret number, the mark includes one + sign. For each number in the guess that matches the numbers but not the position of the secret number, the mark includes one - sign.

	Scenario Outline: submit guess
		Given the secret code is "<code>"
		When I guess "<guess>"
		Then the mark should be "<mark>"

	Scenarios: no match
		|code|guess|mark|
		|1234|5555 |    |

	Scenarios: 1 number match
		|code|guess|mark|
		|1234|1555 |+   |
		|1234|2555 |-   |

	Scenarios: 2 numbers match
		|code|guess|mark|
		|1234|1255 |++  |
		|1234|2355 |--  |

	Scenarios: 3 numbers match
		|code|guess|mark|
		|1234|1235 |+++ |
		|1234|1524 |++- |
		|1234|1523 |+-- |
		|1234|2345 |--- |

	Scenarios: all numbers match
		|code|guess|mark|
		|1234|1234 |++++|
		|1234|1243 |++--|
		|1234|1423 |+---|
		|1234|2341 |----|

