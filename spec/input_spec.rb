RSpec.describe OnePlayer do
  it "1人プレイの挙動確認" do
    result = OnePlayer.janken("rock")
    
    if OnePlayer.read_save == "rock"
      expect(result).to eq "あいこ"
    elsif OnePlayer.read_save == "scissor"
      expect(result).to eq "あなたの勝ち"
    elsif OnePlayer.read_save == "paper"
      expect(result).to eq "CPUの勝ち"
    else
      expect(result).to eq "rock,scissor,paperのいずれかを入力してください"
    end
  end

  it "read_saveの挙動確認" do
    if File.file?("./save_auto.txt")
      File.unlink "./save_auto.txt"
    end

    File.open("./save_auto.txt", "w") do |f|
      f.puts("rock")
    end

    save = OnePlayer.read_save
    expect(save).to eq "rock"
  end
end
