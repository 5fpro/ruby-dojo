class Dojo 

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

end