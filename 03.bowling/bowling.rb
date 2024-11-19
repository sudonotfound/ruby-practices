=begin
# コマンドライン引数からカンマ区切りの文字列を取得
if ARGV.empty?
  puts "引数を指定してください。"
  exit
end

# 引数をカンマで分割
values = ARGV[0].split(',')

# 結果を表示
puts "受け取った値: #{values.inspect}"
=end
#!/usr/bin/env ruby

# コマンドライン引数を取得
input_string = ARGV[0]

# 引数が提供されていない場合のエラーハンドリング
if input_string.nil? || input_string.empty?
  puts "エラー: 引数が指定されていません。カンマ区切りの文字列を入力してください。"
  exit 1
end

def replace_x_with(item)
  item == 'X' ? 10 : item
end

input_array = input_string.split(',')
input_array = input_array.map { |item| replace_x_with(item) }
input_string = input_array.join(',')
# 入力された文字列をそのまま出力
puts input_string

=begin
#フレーム数
frame = 0

max_frame = 10

count = 0

#フレーム毎のスコアを格納する配列
socre = [0]*max_frame #0が格納された10個のリスト

input_array.length.times do |i|#入力配列の要素に対してループを実行
  #最終フレームではない
if frame +1 != max_frame
  #ストライクの処理
  if input_array[i] == 10
    if count == 0 #２投目で10ピンを倒した場合
      #ストライクの時は、1投で２回投げた
      count =1
      score[frame] = input_array[i] + input_array[i+1]+input_arry[i+2]
    else
      score[frame] = input_array[i]+input_array[i+1]
    end
  #スペアの場合
  elsif input_array[i]+score[frame] + score[frame] == 10
    score[frame] = score[frame] + input_array[i]+input_array[i+1]
  #通常の処理
  else
    score[frame] += input_array[i]
  end
end
end
=end

=begin    
    count +=1
    
    if frame + 1 == max_frame
      
    else
      
      if count == 2
        count = 0
        frame += 1
      end
    end
  end 
=end
