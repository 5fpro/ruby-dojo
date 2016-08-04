
class Dojo
  attr_reader :team

  def initialize
    @team = ["Default_name"]
  end

  def discount(price,func)
    func.call(price)
  end

  def stats

    groups = []
    raw = []
    10.times do |group|
      group_array = []
      10.times do |i|
        group_array << {:val => 1, :avg => 1}
        if raw[i]
          raw[i] += group_array[-1][:val]
        else
          raw[i] = 1
        end
      end
      groups << group_array
    end
    result = {:raw => raw, :groups => groups}

  end


  def hire( *names  )

    team_added = @team + names

    if block_given?
      if yield team_added
        @team = team_added
      end
    else
      @team = team_added
    end

    return @team

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

  def self.extend_number!

  end

end



