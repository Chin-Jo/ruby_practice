def post_review(all_posts)
post = {}
puts "好きなジャンヌを入力してください"
post[:genre] = gets
puts "続いてはタイトルを入力してください"
post[:title] = gets
puts "最後は感想を書いてくださいね"
post[:review] = gets
line = "---------------------------"
puts "ジャンヌ：#{post[:genre]}\n#{line}"
puts "タイトル：#{post[:title]}\n#{line}"
puts "#{post[:review]}\n#{line}}"

all_posts << post
end

def read_reviews(readposts)
  # レビューを読む
  i = 1
  readposts.each do |tpost|
    puts "[#{i}]#{tpost[:title]}"
    i += 1
  end
  puts "見たいレビューの番号を入力してください："
  read_number = gets.to_i
  temp_post = readposts[read_number - 1 ]
  line = "---------------------------"
  puts "ジャンヌ：#{temp_post[:genre]}\n#{line}"
  puts "タイトル：#{temp_post[:title]}\n#{line}"
  puts "#{temp_post[:review]}\n#{line}}"
end

def end_program
  # プログラムを終了する
  exit
end

def exception
  puts "無効な値ですね"
end

posts = []

while true do
#メニュー
puts "レビュー数：#{posts.length}"
puts "[0]レビューを書く"
puts "[1]レビューを読む"
puts "[2]アプリを終了する"
input_select = gets.to_i


#開始
if input_select == 0
  posts = post_review(posts)
elsif input_select == 1
  read_reviews(posts)
elsif input_select == 2
end_program
else
  exception
end

end
