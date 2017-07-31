require './direction'
require './encounters'

class Game
  def run
    puts "Press enter to start playing..."
    STDIN.gets

    treasure = 0
    current_surroundings = 'in a clearing in a forest'
    while(true) do
      treasure, current_surroundings = game_loop(treasure, current_surroundings)
      puts "You currently have #{treasure} gold pieces."
    end
  end

  private

  def game_loop(treasure, current_surroundings)
    move_text, current_surroundings, troll, bees = Direction.new.next(current_surroundings)
    encounter, found_treasure, dead, dead_text = Encounters.new.next(troll, bees)

    puts move_text
    puts "You encounter #{encounter}"
    if dead
      puts dead_text
      treasure = 0
      puts 'All your treasure is lost'
    elsif found_treasure > 0
      puts "You find #{found_treasure} gold pieces and carry on travelling."
      treasure += found_treasure
    else
      puts "You find nothing interesting."
    end
    [treasure, current_surroundings]
  end
end

Game.new.run
