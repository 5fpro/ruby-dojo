class Dojo

  include Enumerable

  attr_accessor :stats

  def initialize
    @stats = {raw: [100], groups: [10]}
  end

  def discount(money, func)
    func.call(money)
  end

end
