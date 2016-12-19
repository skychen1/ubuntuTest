def getSub(arry1,arry2,st1,st2,count,counts)
  for i in st1..arry1.size-1
    for j in st2..arry2.size-1
      if arry1[i]==arry2[j]
        count+=1
        counts<<count
        getSub(arry1,arry2,i+1,j+1,count,counts)
       else
        count=0
      end
     end
  end
  return counts
end

a="523kiup87067k"
b="pkiupfd"
arry1=a.split("")
arry2=b.split("")
counts=[]
counts=getSub(arry1,arry2,0,0,0,counts).sort
puts counts[counts.size-1]


