require "janken"

module OnePlayer
  include Janken

  def auto
    pattern = ["rock","scissor","paper"]
    select = pattern[rand(0..2)]
    self.write_save(select)
    select
  end

  def write_save(save)
    self.delete
    File.open("./save_auto.txt", "w") do |f|
      f.puts(save)
    end
  end

  def read_save
    data = "./save_auto.txt"
    if File.file?(data)
      File.open("./save_auto.txt", "r") do |f|
        f.read.chomp
      end
    else
      "セーブデータが有りません"
    end
  end
  
  def delete
    data="./save_auto.txt"
    if File.file?(data)
      File.unlink data
    end
  end

  def janken(input)
    Janken.judge(self.auto,input,"CPU","あなた")
  end

  module_function :auto
  module_function :write_save
  module_function :delete
  module_function :read_save
  module_function :janken
end
