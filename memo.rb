require "csv"#CSVファイルを扱うためのを読み込んでいます

puts "1(メモを作成する)/2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1
  
  puts "拡張子を除いたファイルを入力してください"
  
  file_name = gets.chomp
  
  puts "メモを入力してください"
  puts "完了したらctrl + D を押します"
  
  memo = STDIN.read
  memo = input_memo.chomp
  
  CSV.open("#{file_name}.csv","a") do |csv|
    
    csv.puts ["#{memo}"]
    
  end
  
elsif memo_type == 2
  
  file_name = gets.chomp
  
  puts "編集内容を入力してください。"
  puts "終了後、ctrl + D を押します。"
  
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv","a") do |csv|
    
    csv.puts ["#{memo}"]
    
  end
else 
  
  puts "１か２の数字を入力してください"
  
end



