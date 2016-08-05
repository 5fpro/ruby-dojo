class Dojo

  include Enumerable

  attr_accessor :stats, :team

  def initialize
    @stats = {raw: [100], groups: [10]}
    @team = []
  end

  def discount(money, func)
    func.call(money)
  end

  def hire(*employee)
    yield @team
  end

  def to_current_instance(mo)

  end

  def growth

  end

  def to_klass(mo)

  end

  def to_all_instance(mo)

  end

  def self.extend_number!

  end


end
