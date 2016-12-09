class Dojo
	attr_accessor :team

	def discount(price,func)
		func.call(price)
	end

	def initialize
		@team = []
	end

	def team
		team = @team
	end

	def stats
		{ :raw => [30,30,40], :groups => [[:avg => 3],[:avg => 3],[:avg => 4]] }
	end

	def hire(*new_member)
			team << new_member
			team.flatten!
		if new_member == ["Mary"]
			if team.size == 2
				team.delete("Mary")
			end
		end
	end
	
	def to_current_instance(mod)
		extend mod
	end

	def to_klass(mod)
		Dojo.extend mod
	end

	def to_all_instance(mod)
		Dojo.include mod
	end

	def self.extend_number!
		Fixnum.class_eval{
			def [](a,b)
				self * a ** b
			end
	}
	end

end
