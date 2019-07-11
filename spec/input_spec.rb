# frozen_string_literal: true

RSpec.describe OnePlayer do
  it "1人プレイの挙動確認" do
    result = OnePlayer.janken("rock")

    if result[0] == "rock"
      expect(result[1]).to eq "あいこ"
    elsif result[0] == "scissor"
      expect(result[1]).to eq "あなたの勝ち"
    elsif result[0] == "paper"
      expect(result[1]).to eq "CPUの勝ち"
    else
      expect(result[1]).to eq "rock,scissor,paperのいずれかを入力してください"
    end
  end
end
