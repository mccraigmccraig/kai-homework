#!/usr/bin/env ruby

# find solutions to
#
# 1 @ 2 @ 3 @ 4 @ 5 @ 6 @ 7 @ 8 @ 9 = 100
#
# where @ is one of the operators +, -, *, /

OPS = {
  '0' => '+',
  '1' => '-',
  '2' => '*',
  '3' => '/'}

def expression(n)
  chars = n.to_s(4).chars.to_a
  soln = Array.new( 8 - chars.length, '0' ) + chars
  ops = soln.map{|c| OPS[c]}
  "1.0 #{ops[0]} 2.0 #{ops[1]} 3.0 #{ops[2]} 4.0 #{ops[3]} 5.0 #{ops[4]} 6.0 #{ops[5]} 7.0 #{ops[6]} 8.0 #{ops[7]} 9.0"
end

def test(expr)
  puts expr if eval(expr) == 100
end

(0..65535).each{|i| test(expression(i)) }
