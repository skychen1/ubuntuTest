  #(c)
file=File.open("./log.txt","w+") 
file.puts("fdsafda dsfasd dasfdsa")
file.puts("fdsa sdfg ret tyrwt wqwer etrwe qewr")
file.puts("牙牙乐 有营养")
file.puts("哈哈，千千你好啊")
line=0
 file.rewind
 array=file.readlines
 if array.size!=1
   file.each_line do |lines|
    lines.delete
  line+=1
  if line!=array.size
    file.rewind
    file.truncate(file.pos)
  end
 end
 end
 puts array.size
  
