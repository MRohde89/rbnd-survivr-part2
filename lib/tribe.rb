class Tribe

  attr_reader :name, :members

  def initialize(options={})
    @name = options[:name]
    @members = options[:members]
    puts "Tribe #{@name} has been created"
  end

  def to_s
    @name
  end

  def tribal_council(options = {})
    voted_off = @members.select { |member| member != options[:immune]}.sample
    @members.select!{ |member| member.to_s != voted_off}
    return voted_off
  end

end
