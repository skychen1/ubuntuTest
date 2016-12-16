# Encoding : utf-8
require 'find'
def du(dir)
  include FileTest
if File.file?(dir)
  puts "#{dir}:#{FileTest.size(dir)}"
end
if File.directory?(dir)
  dname=Dir.open(dir)
  while name=dname.read
    next if name=="."
    next if name==".."
    du(dir+"/"+name)
  end
end
end
du(ARGV[0])
#ruby out.rb .
