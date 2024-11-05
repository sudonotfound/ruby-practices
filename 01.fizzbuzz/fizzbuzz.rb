#!/usr/bin/env ruby

require 'debug'

for i in 1..20 do
  debugger  # ここにブレークポイントを設定
  if i%15 ==0
    puts "FizzBuzz"
  elsif i%3 ==0
    puts "Fizz"
  elsif i%5 == 0
    puts "Buzz"
  else
    puts i
  end
end
