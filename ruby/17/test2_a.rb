# Encoding : utf-8
file=File.open("./log.txt","w+") 
file.puts("fdsafda dsfasd dasfdsa")
file.puts("fdsa sdfg ret tyrwt wqwer etrwe qewr")
file.puts("牙牙乐 有营养")
file.puts("哈哈，千千你好啊")
file.rewind
file.each_line do |lines|
  lines=lines.reverse
puts lines
#file.puts(lines)#lines写入时出现乱码
end


