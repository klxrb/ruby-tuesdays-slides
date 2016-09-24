first, second = ["foo", "bar"]

def foo(*bars)
  bars.join('|')
end








head, *body, tail = *(1..10)
first, *others= *(1..10)
first, = *(1..10)
*others ,last = *(1..10)

def roman_numerals_converter(num)
  symbols = ['I', 'IV', 'V', 'IX', 'X'].reverse
  values  = [1,   4,    5,   9,    10].reverse

  symbols_values = symbols.zip(values)

  roman_numerals = ''
  symbols_values.each do |sym, val|
    while num >= val
      roman_numerals << sym
      num -= val
    end
  end

  roman_numerals
end

ids = [1,2,3]
names = [["Jimmy", "Ngu"], ["John", "Connor"], ["Scooby", "Doo"]]

ids_names = ids.zip(names)
ids_names.each do |id, (first, last)|
  puts "ID: #{id} | First Name: #{first} | Last Name: #{last}"
end ; nil

class FullName
  attr_accessor :fullname
  def initialize(name)
    @fullname = name
  end

  def to_a
    first, *mid, last = @fullname.split
    [first, mid.join(' '), last]
  end

end




fullname = FullName.new("John Sarah Connor")
first, mid, last = *fullname


