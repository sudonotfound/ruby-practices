require 'date'
require 'optparse'
=begin
optparseはコマンドラインで引数を用いるために利用する
=end
# コマンドライン引数の処理
options = {} #コマンド引数を格納するためのハッシュ
OptionParser.new do |opt| #クラスの新しいインスタンスを作成しあげる
  
  opt.on('-y YEAR', '--year YEAR', 'Year (e.g., 2020)') { |o| options[:year] = o.to_i }
  opt.on('-m MONTH', '--month MONTH', 'Month (e.g., 11)') { |o| options[:month] = o.to_i }
end.parse! #コマンドライン引数の解析を行い、引数で渡された年と月の値がハッシュに保存される

#年と月のデフォルト値を設定（指定されなかった場合に使用）
year = options[:year] 
month = options[:month]

=begin
Date.メゾット()
=end

# 月の最初の日を取得
first_day = Date.new(year, month, 1)

# 月の最後の日を取得
last_day = Date.new(year, month, -1)

# カレンダーのヘッダーを表示
puts "#{year}年#{month}月".center(20) #.center(20)は年と月を結合した文字列を20文字幅で中央揃え
puts "日 月 火 水 木 金 土"

# 最初の日の曜日に合わせて空白を挿入
print "   " * first_day.wday
=begin
月の最初の日の曜日に合わせて、空白を挿入します。
first_day.wday はその月の1日が何曜日かを示す数値を返します
（0が日曜、1が月曜…）。その数に応じた空白を入れることで、1日を正しい位置に表示
=end
# 日付を表示
(first_day..last_day).each do |date|
#first_day から last_day までの日付の範囲をイテレートします。各日付オブジェクトを date として順に処理
  printf("%2d ", date.day)
  #文字列の「左寄せ」や、数値の「桁のゼロ埋め」や、「小数点以下の桁指定」など、出力する文字列のフォーマットを指定したいときに使用
  puts if date.saturday? #date.saturday? が true（つまり、土曜日）であれば改行を入れます。これにより、土曜日の後に改行し、次の行に移動して表示を続けます。
end
