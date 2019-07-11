# frozen_string_literal: true

RSpec.describe Janken do
  it "has a version number" do
    expect(Janken::VERSION).not_to be nil
  end

  it "じゃんけんの挙動テスト" do
    janken = Janken.judge("rock", "rock", "A", "B")
    expect(janken).to eq "あいこ"
  end
end
