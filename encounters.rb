class Encounters
  def next(troll, bees)
    dead = false
    encounter = 'nothing interesting'
    found_treasure = 0
    if rand < 0.4
      found_treasure = (rand * 100).to_int
    end

    if troll
      encounter = 'a giant troll'
      if rand < 0.2
        dead = true
        dead_text = 'The troll kills you.'
      end
    end

    if bees && rand < 0.2
      encounter = 'killer bees'
      if rand < 0.8
        dead = true
        dead_text = 'You are stung to death.'
      end
    end
    [encounter, found_treasure, dead, dead_text]
  end
end
