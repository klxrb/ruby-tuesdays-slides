1.to_s
nil.to_a
"a".to_i

USERS = ["Jimmy", "John", "Tony"]
def find_user(n)
  USERS[n.to_int]
end





find_user(nil)

def foo(singular_or_many)
  Array(singular_or_many).each do |n|
    puts n
  end
end


sum_it = Proc.new { |a,b| a + b }
multiply_it = Proc.new { |a,b| a * b }

# unary & operator
(1..10).inject(&sum_it)


# since ruby 1.9
(1..10).inject(&:+)


class Symbol
  def to_proc
    Proc.new do |obj|
      # call the method named by this symbol on the supplied object
      obj.send(self)
    end
  end
end