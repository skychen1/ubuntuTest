def great(array)
   temp=[]
   temp1=[]
  array.each do |i|
    num=0
    count=0
    itep="\'#{i}\'"
    if temp.size>0 and temp.include?(itep)==true
      next
    end
    array.each do |j|
      count+=1
      if i==j
        num+=1
      else
        if count==array.size
          char="\'#{i}\'"
          c="*"*num
          temp<<char
          puts "#{char}:#{c}"
        end
      end
    end
  end
end
a="Ruby is an object oriented programming language"
b=a.split("").sort
great(b)