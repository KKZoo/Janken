# frozen_string_literal: true

require "janken"

module OnePlayer
  include Janken

  module_function def auto
    pattern = %w[rock scissor paper]
    select = pattern[rand(0..2)]
  end

  module_function def janken(input)
    output = []
    pattern = auto
    output << pattern
    output << Janken.judge(pattern, input, "CPU", "あなた")
  end
end
