class Dojo

  def discount(price, func)
    func.call(price)
  end

  def stats
    raw = [10,20,30,40]
    group = [[{:avg=>1}],[{:avg=>2}],[{:avg=>3}],[{:avg=>4}]]

    {:raw => raw, :groups => group }
  end

  def hire

  end


end


