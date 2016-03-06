class Game

  attr_reader :tribes

  # initialize only with 2 tribes
  def initialize(tribe_1, tribe_2)
    @tribes = []
    @tribes << tribe_1 << tribe_2
  end

  # add a new tribe into the game
  def add_tribe(tribe)
    @tribes << tribe
  end

  # randomly choose a tribe that looses the immunity_challenge
  def immunity_challenge
    @tribes.sample
  end

  # clear all tribes
  def clear_tribes
    @tribes = []
  end

  # merge tribes to a new tribe. This will return a Tribe class.
  # used after phase one.
  def merge(merge_name)
      @merge_name = merge_name
      survivrs = []
      @tribes.each do |tribe|
        # add all remaining members of the tribe into one array survivrs
        survivrs = survivrs + tribe.members
    end
    # return new tribe
    return Tribe.new(name: merge_name, members: survivrs)
  end

  def individual_immunity_challenge
    # choose between all contestants a member which is immune
    individuals = []
    @tribes.each do |tribe|
      individuals = individuals + tribe.members
    end
    individuals.sample
  end

end
