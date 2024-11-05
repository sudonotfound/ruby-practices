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


=begin
for i in 1..20 do
           if i%3 ==0
             puts "Fizz"
           elsif i%5 ==0
             puts "Buzz"
           elsif i == 15
             puts "FizzBuzz"
           else
             puts i
           end
         end
=end
