class Dojo

  attr_accessor :team

  def initialize(team = [])
    @team = team
  end

  def discount(price, func)
    func.call(price)
  end

  def stats
    raw = [10,20,30,40]
    group = [[{:avg=>1}],[{:avg=>2}],[{:avg=>3}],[{:avg=>4}]]

    {:raw => raw, :groups => group }
  end

  def hire(*names)
    new_team_list = @team + names

    if block_given?
      self.team = new_team_list if yield new_team_list
    else
      self.team = new_team_list
    end
  end

  def to_current_instance(module_name)
    extend module_name
  end

  def to_klass(module_name)
    self.class.extend module_name
  end

  def to_all_instance(module_name)
    self.class.include module_name
  end

  def self.extend_number!
    Fixnum.class_eval do
      self.instance_eval {Array}
        # x = arr[0]
        # 1024
      # end
    end
  end
end

