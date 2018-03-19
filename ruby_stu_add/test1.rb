#!/usr/local/bin/ruby
digits = 0..9
puts digits.include?5
ret = digits.min
puts "最少值为 #{ret}"

ret = digits.max
puts "最大值为 #{ret}"

ret = digits.reject {|i| i<5}
puts "#{ret}"

digits.each do |digit|
 puts "#{digit}"
end 

#puts "Enter a value :"
#val = gets
#puts val

#aFile = File.new("input.txt", "r+")
#if aFile
#   content = aFile.sysread(200)
#   puts content
#else
#   puts "Unable to open file!"
#end

arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]

def promptAndGet(prompt)
    print prompt
    res = readline.chomp
    throw :quitRequested if res == "!"
    return res
end

catch :quitRequested do
   name = promptAndGet("Name: ")
   age = promptAndGet("Aage: ")
   sex = promptAndGet("Sex: ")

end

promptAndGet("Name:")


