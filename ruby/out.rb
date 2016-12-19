#Encoding : UTF-8
array=Array.new(100)  
temp=array.collect{
  |i|   
  i=rand(100)
}

temp2=temp.sort{
|a,b|
a<=>b
}
puts temp2
puts temp.sort