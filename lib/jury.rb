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
    @result = {}
    finalists.each do |finalist|
      @result["#{finalist}"] = 0 # set to 0 first
      end
    @members.each do |member|
      vote = @result.keys.sample
      print "#{member} voted for #{vote}".yellow
      @result[vote] += 1
      end
    return @result
  end

  def report_votes(final_votes)
    final_votes.each do |name, vote|
      print "#{name} received #{vote} votes".green
    end
  end

  def announce_winner(final_votes)
    print "And the Winner is #{final_votes.max_by{|k,v| v}[0]}".white
     return final_votes.max_by{|k,v| v}[0]
  end
end
