class Dojo 

	attr_reader :team
 
 	def initialize(team= Array.new)
    @team = team
 	end

	def discount(price,func)
	  func.call(price)
	end

	def stats
		raw =[]
		groups = []
		5.times do |i|
			raw << i * 10
			groups << [{ :avg => i}]
		end

		{:raw => raw, 
		:groups => groups}
	end

	def hire(*names)
 		new_team = @team + names
  		  
 		if block_given?
 			@team = new_team if yield new_team
 		else
 			@team = new_team
 		end
  end

  def to_current_instance(module_name)
    extend module_name
  end

  def to_klass(module_name)
  	self.class.extend(module_name)
  end

  def to_all_instance(module_name)
  	self.class.include(module_name)
  end

end