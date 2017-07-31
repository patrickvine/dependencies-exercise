class Direction
  def next(current_surroundings)
    troll = false
    bees = false

    puts "You are #{current_surroundings}, there are path ways to the north, south, east and west - where would you like to go?"
    puts "(N, S, E, W)"
    direction = (STDIN.gets)[0]

    if direction == 'N'
      move_text = 'You move north'
      current_surroundings = 'in a clearing in a forest'
    elsif direction == 'S'
      move_text = 'You move south'
      current_surroundings = 'next to a lake'
    elsif direction == 'E'
      move_text = 'You move east'
      current_surroundings = 'along side a rocky cliff'
      troll = true
    elsif direction == 'W'
      move_text = 'You move west'
      current_surroundings = 'deep in a thick forest'
      bees = true
    else
      move_text = 'You do not move'
    end

    [move_text, current_surroundings, troll, bees]
  end
end
