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

end
