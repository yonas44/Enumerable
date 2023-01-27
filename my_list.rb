require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*vals)
    @list = vals
  end

  def each
    i = 0
    while @list[i]
      yield(@list[i])
      i += 1
    end
  end
end
