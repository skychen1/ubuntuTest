# Encoding : utf-8
line=0
word=0
chars=0
file=File.open("./log.txt","w+") 
file.puts("fdsafda dsfasd dasfdsa")
file.puts("fdsa sdfg ret tyrwt wqwer etrwe qewr")
file.puts("牙牙乐 有营养")
file.puts("哈哈，千千你好啊")
file.rewind
file.each_line do |lines|
  line+=1
  word+=lines.split("\s").size
end
file.rewind
while ch=file.getc
  chars+=1
end
puts "行数：#{line}"
puts "单词数：#{word}"
puts "字符数：#{chars}"
