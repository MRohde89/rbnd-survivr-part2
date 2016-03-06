class Tribe

  attr_reader :name, :members

  def initialize(options={})
    @name = options[:name]
    @members = options[:members]
    print "Tribe #{@name} has been created".blue
  end

  def to_s
    @name
  end

  def tribal_council(options = {})
    voted_off = @members.select { |member| member != options[:immune]}.sample
    @members.delete(voted_off)
    print "#{voted_off} has been eliminated from #{@name}".red
    return voted_off
  end

  def individual_immunity_challenge
    @members.sample
  end

end
