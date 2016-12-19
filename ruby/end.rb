#a=ARGV[0]
a="fas523kiup87067kjio"
#b=ARGV[1]
#b="f23kjj"
#b="pkiupfd"
b="pkiupfds523fds"
arry2=b.split("")
result=[]
temp=""
if a.include?(b)
  puts b.length
else
  arry2.each do |ch|
   temp=temp+ch
    if a.include?(temp)
      result << temp
    else
      temp=ch
    end
  end
end
puts result.sort{
  |a,b|
  a.size<=>b.size
}






def get(arry1,arry2,i,j,temp)
if arry1[i]=arry2[j]
  temp+=arry2[j]
  puts temp
  get(arry1,arry2,i+1,j+1,temp)
else

end
end