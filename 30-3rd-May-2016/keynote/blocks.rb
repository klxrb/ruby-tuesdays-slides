[1, 2, 3, 4].reject do |n|
  n % 2 == 0
end

def fibonacci(max=Float::INFINITY)
  return to_enum(__method__, max) unless block_given?
  yield previous = 0
  while (i ||= 1) < max
    yield i
    i, previous = previous + i, i
  end
  previous
end

fib = fibonacci { |n| puts n }


def stepper(start, step)
  Enumerator.new do |yielder|
    i = start
    loop do
      i += step
      yielder.yield i
    end
  end
end