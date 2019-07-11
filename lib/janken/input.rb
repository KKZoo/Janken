# frozen_string_literal: true

require "janken"

module OnePlayer
  include Janken

  def auto
    pattern = ["rock","scissor","paper"]
    pick = pattern[rand(0..2)]
  end

  module_function def janken(input)
    output = []
    pattern = auto
    output << pattern
    output << Janken.judge(pattern, input, "CPU", "あなた")
  end
end
