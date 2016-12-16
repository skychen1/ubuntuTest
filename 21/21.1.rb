#Encoding : utf-8
def my_collect(obj,&block)
  result=[]
 obj.each do |i|
  if block
  result << block.call(i)
  end
 end
 return result
end
ary=my_collect([1,2,3,4,5]) do |num|
  num*2
end
p ary
