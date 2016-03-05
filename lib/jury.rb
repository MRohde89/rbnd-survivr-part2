class Jury

  attr_accessor :jury, :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def members
    @members
  end

  def cast_votes(finalists)
    result = {}
    finalists.each do |finalist|
      result["#{finalist}"] = 0 # set to 0 first
    end
    @members.each do |member|
      puts vote = result.keys.sample
      result[vote]+= 1
    end
    result
  end

  def report_votes(final_votes)
    final_votes.each do |name, vote|
      puts "#{name} received #{vote} votes"
    end
  end

  def announce_winner(final_votes)
    final_votes.max_by{|k,v| v}[0]
  end
end
