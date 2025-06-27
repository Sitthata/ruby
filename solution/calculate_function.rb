def one(operation = nil)
  if operation
    operation.call(1)
  else
    1
  end
end

def two(operation = nil)
  if operation
    operation.call(2)
  else
    2
  end
end

def three(operation = nil)
  if operation
    operation.call(3)
  else
    3
  end
end

def four(operation = nil)
  if operation
    operation.call(4)
  else
    4
  end
end

def five(operation = nil)
  if operation
    operation.call(5)
  else
    5
  end
end

def six(operation = nil)
  if operation
    operation.call(6)
  else
    6
  end
end

def seven(operation = nil)
  if operation
    operation.call(7)
  else
    7
  end
end

def eight(operation = nil)
  if operation
    operation.call(8)
  else
    8
  end
end

def nine(operation = nil)
  if operation
    operation.call(9)
  else
    9
  end
end

def zero(operation = nil)
  if operation
    operation.call(0)
  else
    0
  end
end

def minus(n)
  proc { |x| x - n }
end

def divided_by(n)
  proc { |x| x / n }
end

def plus(n)
  proc { |x| x + n }
end

def times(n)
  proc { |x| x * n }
end
