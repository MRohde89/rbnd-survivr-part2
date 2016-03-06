class Tribe

  attr_reader :name, :members

  def initialize(options={})
    @name = options[:name]
    @members = options[:members]
    print "Tribe #{@name} has been created".blue
  end

  # will return the name of the Tribe if #{tribe} gets called
  def to_s
    @name
  end

  # elimination council
  def tribal_council(options = {})
    # select everyone besides of the immune participant
    # take random participant and assign he/she to the variable voted off
    voted_off = @members.select { |member| member != options[:immune]}.sample
    # delete the voted_off participant
    @members.delete(voted_off)
    print "#{voted_off} has been eliminated from #{@name}".red
    return voted_off
  end

  # immunity_challenge on tribe level 
  def individual_immunity_challenge
    @members.sample
  end

end
