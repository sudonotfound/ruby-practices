require 'date'
require 'optparse'
# コマンドライン引数の処理
options = {} #コマンド引数を格納するためのハッシュ
OptionParser.new do |opt| #クラスの新しいインスタンスを作成しあげる
  
  opt.on('-y YEAR', '--year YEAR', 'Year (e.g., 2020)') { |o| options[:year] = o.to_i }
  opt.on('-m MONTH', '--month MONTH', 'Month (e.g., 11)') { |o| options[:month] = o.to_i }
end.parse! 

# 年と月のデフォルト値を設定（指定されなかった場合に使用）
year = options[:year] 
month = options[:month]


# 月の最初の日を取得
first_day = Date.new(year, month, 1)

# 月の最後の日を取得
last_day = Date.new(year, month, -1)

# カレンダーのヘッダーを表示
puts "#{year}年#{month}月".center(20) #.center(20)は年と月を結合した文字列を20文字幅で中央揃え
puts "日 月 火 水 木 金 土"

# 最初の日の曜日に合わせて空白を挿入
print "   " * first_day.wday
# 日付を表示
(first_day..last_day).each do |date|
  printf("%2d ", date.day)
  puts if date.saturday? 
end
