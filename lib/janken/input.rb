require "janken"

module OnePlayer
  include Janken

  def auto
    pattern = ["rock","scissor","paper"]
    pick = pattern[rand(0..2)]
  end

  def janken(input)
    output = Array.new
    pattern = self.auto
    output << pattern
    output << Janken.judge(pattern,input,"CPU","あなた")
  end

  module_function :auto
  module_function :janken
end
