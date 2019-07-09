module Janken
  class Error < StandardError; end
  
  def judge(input_a,input_b, player_a, player_b)
    if input_a == input_b
      "あいこ"
    elsif input_a == "rock" && input_b == "scissor"
      "#{player_a}の勝ち"
    elsif input_a == "rock" && input_b == "paper"
      "#{player_b}の勝ち"
    elsif input_a == "scissor" && input_b == "rock"
      "#{player_b}の勝ち"
    elsif input_a == "scissor" && input_b == "paper"
      "#{player_a}の勝ち"
    elsif input_a == "paper" && input_b == "rock"
      "#{player_a}の勝ち"
    elsif input_a == "paper" && input_b == "scissor"
      "#{player_b}の勝ち"
    else
      "rock,scissor,paperのいずれかを入力してください"
    end
  end
  
  module_function :judge
end
