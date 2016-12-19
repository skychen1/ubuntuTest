# Encoding : utf-8
file=File.open("./log.txt","w+") 
file.puts("fdsafda dsfasd dasfdsa")
file.puts("fdsa sdfg ret tyrwt wqwer etrwe qewr")
file.puts("牙牙乐 有营养")
file.puts("哈哈，千千你好啊")
 file.rewind
 array=file.readlines
 if array.size!=1
   file.each_line do |lines|
    file.truncate(file.pos)
  line+=1
  if line!=array.size
    file.rewind
    file.truncate(file.pos)
  end
 end
 end
 puts array.size
