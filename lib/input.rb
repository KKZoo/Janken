require "./janken.rb"

module OnePlayer #< Janken
  include Janken

  def auto
    pattern = ["rock","scissor","paper"]
    select = pattern[rand(0..2)]
    self.write_save(select)
    select
  end

  def write_save(save)
    self.delete("./save_auto.txt")
    File.open("./save_auto.txt", "w") do |f|
      f.puts(save)
    end
  end

  def read_save
    data = "./save_auto.txt"
    if File.file?(data)
      File.open("./save_auto.txt", "r") do |f|
        puts f.read
      end
    else
      puts "セーブデータが有りません"
    end
  end
  
  def delete(file_name)
    data="#{file_name}"
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