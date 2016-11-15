
class Dojo

	def discount(price, func)
		func.(price)
	end

	def stats
		{ raw: [50, 50], groups: [[{avg: 5}],[{avg: 5}]] }  
	end

	def team
		@team ||= []
	end

	def hire(*person)
		@team << person
		@team.flatten!
		@team.delete("Mary") if team.size <= 2
	end

  def to_current_instance(module_name)
    extend(module_name)
  end
 
  def to_klass(module_name)
    self.class.extend(module_name)
   end
 
  def to_all_instance(module_name)
    self.class.include(module_name)
  end

  def extend_number!
  	
  end
	

end
