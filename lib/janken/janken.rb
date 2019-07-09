module Janken
  class Error < StandardError; end
  
  def judge(input_a,input_b, player_a, player_b)
    if input_a == input_b
      puts "あいこ"
    elsif input_a == "rock" && input_b == "scissor"
      puts "#{player_a}の勝ち"
    elsif input_a == "rock" && input_b == "paper"
      puts "#{player_b}の勝ち"
    elsif input_a == "scissor" && input_b == "rock"
      puts "#{player_b}の勝ち"
    elsif input_a == "scissor" && input_b == "paper"
      puts "#{player_a}の勝ち"
    elsif input_a == "paper" && input_b == "rock"
      puts "#{player_a}の勝ち"
    elsif input_a == "paper" && input_b == "scissor"
      puts "#{player_b}の勝ち"
    else
      puts "rock,scissor,paperのいずれかを入力してください"
    end
  end
  
  module_function :judge
end