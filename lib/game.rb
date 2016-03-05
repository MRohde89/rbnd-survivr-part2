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

  def merge(merge_kind)
    if merge_kind == 'combined_tribe'
      then
        survivrs = []
        @tribes.each do |tribe|
          survivrs = survivrs + tribe.members
      end
      return @tribes = Tribe.new(name: 'merged', members: survivrs)
    end
  end

  def individual_immunity_challenge
    individuals = []
    @tribes.each do |tribe|
      individuals = individuals + tribe.members
    end
    individuals.sample
  end

end
