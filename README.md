# dependencies-exercise

Pull the repo.  Play the game by running `ruby game.rb`.

The game is a simple text adventure where the player walks through
the environment.  The goal is to gather the most treasure.  The game
is a demo version and hence closes after 1 minute.

# Familiarise yourself with the code.

The goal of this exercise will be to change the design of the code to
make the software testable.  While doing this, keep the system running
and the game working - so refactor safely.

The design could / should change - but change it with deliberate intent
to achieve a more testable design.

# The exercises

Q1. Make encouters testable.

- Think about the core problem(s) and determine how to change the design to
  test this.
- A test for encounters is in `test/encounters_spec.rb`.  Run it
  several times.  It will randomly pass and fail.
- Make the test reliable (feel free to change the design).
- Add more tests for the other flows in this method.

Q2. Make direction testable.

- Think about the core problem(s) and determine how to change the design to
  test this.
- A test for direction is in `test/direction_spec.rb`.  Run it.
- Make the test reliable (feel free to change the design).
- Add more tests for the other flows in this method.

Q3. Make the game testable.

- Should we test the game?  Is an integration test viable?
- What are we trying to test if we test game?
- How would you change the design to achieve this?
- Add a test to `test/game_spec.rb` and make it pass when running the
  game.
- Do we need to change how to run the game?

