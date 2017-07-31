# dependencies-exercise

Pull the repo.  Play the game by running `ruby game.rb`.

The game is a simple text adventure where the player walks through
the environment.  The goal of the game is to walk around the world
and gather treasure.  

In order to move type the first character for the direction 
(N for north, S for South, E for East, W for West) and press <enter>.

Sometimes you may meet a troll or killer bees.  They may even kill you.

Play the game.  There is no exit code, just `ctrl-c` when you are done.

# Familiarise yourself with the code.

The goal of this exercise will be to change the design of the code to
make the software testable.  While doing this, keep the system running
and the game working - so refactor safely.

The design could / should change - but change it with deliberate intent
to achieve a more testable design.

Start with the first exercise - making the Encounters class testable
and continue down the questions.

# The exercises

Q1. Make the Encouters class testable.

- Think about the core problem(s) and determine how to change the design to
  test this.
- A test for encounters is in `test/encounters_spec.rb`.  Run it
  several times.  It will randomly pass and fail.
- Make the test reliable (feel free to change the design).
- Add more tests for the other flows in this method.

Q2. Make the Direction class testable.

- Think about the core problem(s) and determine how to change the design to
  test this.
- A test for direction is in `test/direction_spec.rb`.  Run it.
- Make the test reliable (feel free to change the design).
- Add more tests for the other flows in this method.

Q3. Make the Game class testable.

- Should we test the game?  Is an integration test viable?
- What are we trying to test if we test game?
- How would you change the design to achieve this?
- Add a test to `test/game_spec.rb` and make it pass when running the
  game.
- Do we need to change how to run the game?

Bonus Question: Unlicensed version

If the company wanted to build a version that has time limited play as a
freeware version - how would this be implemented?  For instance the game
should end after 1 minute of game play and tell the player how much
gold they found.

- How could this be implemented?
- How can this be tested?

