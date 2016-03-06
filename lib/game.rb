class Game

  attr_reader :tribes

  def initialize(tribe_1, tribe_2)
    @tribes = []
    @tribes << tribe_1 << tribe_2
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes = []
  end

  def merge(merge_name)
      @merge_name = merge_name
      survivrs = []
      @tribes.each do |tribe|
        survivrs = survivrs + tribe.members
    end
    return Tribe.new(name: merge_name, members: survivrs)
  end

  def individual_immunity_challenge
    individuals = []
    @tribes.each do |tribe|
      individuals = individuals + tribe.members
    end
    individuals.sample
  end

end
