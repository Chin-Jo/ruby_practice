class Food
    # ここにクラスの定義を書き加えてください
    @@sum_cal = 0
    @@sum_view = []
  def self.input
    @cal_hash = {}
    puts "料理名を入力してください"
    @cal_hash[:name] = gets.chomp
    puts "カロリーを入力してください"
    @cal_hash[:cal] = gets.to_i

    @@sum_cal += @cal_hash[:cal]
    @@sum_view << @cal_hash
  end

  def self.show_all_calory
    @@sum_view.each do |view|
      puts "#{view[:name]} : #{view[:cal]}"
    end
  end

end

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i

  if input == 0
    Food.input           # カロリーの入力
  elsif input == 1
    Food.show_all_calory # カロリーの合計を表示
    exit
  end
end
