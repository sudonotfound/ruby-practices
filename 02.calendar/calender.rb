#!/usr/bin/env ruby
require 'date'
require 'optparse'

#現在の日付を取得
current_date = Date.today


# コマンドライン引数の処理
options = {
 year: current_date.year,
 month: current_date.month
}

OptionParser.new do |opt|
  opt.on('-y YEAR', '--year YEAR', 'Year (e.g., 2020)') { |o| options[:year] = o.to_i }
  opt.on('-m MONTH', '--month MONTH', 'Month (e.g., 11)') { |o| options[:month] = o.to_i }
end.parse! #コマンドライン引数の解析を行い、引数で渡された年と月の値がハッシュに保存される

year = options[:year] 
month = options[:month]

# 月の最初の日を取得
first_day = Date.new(year, month, 1)

# 月の最後の日を取得
last_day = Date.new(year, month, -1)

puts "#{year}年#{month}月".center(20)
puts "日 月 火 水 木 金 土"

# 最初の日の曜日に合わせて空白を挿入
print "   " * first_day.wday
#月の初日の曜日に応じて空白を入れることで、1日を正しい位置に表示する
# 日付を表示
(first_day..last_day).each do |date|
  printf("%2d ", date.day)
  puts if date.saturday?
end
