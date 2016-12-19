def print_libraries
  k=["./cind","/test/dtringio","apen-uri"]
  k.sort{
    |a,b|
    adir,abase=File.split(a)
    bdir,bbase=File.split(b)
    abase<=>bbase
  }.each do |path|
    puts path
  end
end
print_libraries
