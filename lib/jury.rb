class Jury

  attr_accessor :jury, :members

  def initialize
    @members = []
  end

  # adds member to Jury
  def add_member(member)
    @members << member
  end

  # show members
  def members
    @members
  end

  # cast votes for the finalists
  def cast_votes(finalists)
    @result = {}
    # create result hash with finalist als key and 0 as value
    finalists.each do |finalist|
      @result["#{finalist}"] = 0 # set to 0 first
      end
    # loop through every jury member to get their vote
    # Also add vote to result hash
    @members.each do |member|
      vote = @result.keys.sample
      print "#{member} voted for #{vote}".yellow
      @result[vote] += 1
      end
    return @result
  end

  # loop thought the finalist and report their overall votes
  def report_votes(final_votes)
    final_votes.each do |name, vote|
      print "#{name} received #{vote} votes".green
    end
  end


  # announce winner by choosing the key with the highest value from final_votes hash
  def announce_winner(final_votes)
    print "And the Winner is #{final_votes.max_by{|k,v| v}[0]}".white
     return final_votes.max_by{|k,v| v}[0]
  end
end
