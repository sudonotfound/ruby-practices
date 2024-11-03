#!/usr/bin/env ruby

# コマンドライン引数を取得
input_string = ARGV[0]

# 引数が提供されていない場合のエラーハンドリング
if input_string.nil? || input_string.empty?
  puts "エラー: 引数が指定されていません。カンマ区切りの文字列を入力してください。"
  exit 1
end

# 入力された文字列をそのまま出力
puts input_string
