class Contestant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # will return the name of the Contestant if #{Contestant} gets called
	def to_s
		@name
	end

end
