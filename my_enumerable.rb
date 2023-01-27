module MyEnumerable
  def all?
    output = true
    each { |e| output = false unless yield e } if block_given?
    output
  end

  def any?
    output = false
    each { |e| output = true if yield e } if block_given?
    output
  end

  def filter
    output = []
    each { |e| output.push(e) if yield e } if block_given?
    output
  end
end
