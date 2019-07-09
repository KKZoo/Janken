require "./janken.rb"

class OnePlayer #< Janken
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
    janken = Janken.new
    janken.judge(self.auto,input,"CPU","あなた")
  end
end
