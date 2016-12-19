# Encoding : utf-8
file=File.open("./log.txt","w+") 
file.puts("fdsafda dsfasd dasfdsa")
file.puts("fdsa sdfg ret tyrwt wqwer etrwe qewr")
file.puts("牙牙乐 有营养")
file.puts("哈哈，千千你好啊")
line=0
file.rewind
 file.each_line do |lines|
  line+=1
  puts file.pos
  if line==1
    file.truncate(file.pos)
  end
 end
