require 'ripper'
require 'pp'
code = <<STR
  10.times do |n|
    puts n
  end
STR
pp Ripper.sexp(code)
