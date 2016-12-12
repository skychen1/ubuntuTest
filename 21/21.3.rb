#Encoding : gbk
def accumlator
  total=0
 Proc.new do 
  |i|
  total+=i
end
end
acc=accumlator
p acc.call(1)
p acc.call(2)
p acc.call(3)
#不能有返回值，否则acc无法调用call方法
