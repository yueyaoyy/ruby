#!/usr/local/bin/ruby

count = 0
arr = []
10.times do |i|
     #puts "#{i}"
   arr[i] = Thread.new {
     puts "#{i}"
     sleep(rand(0)/10.0)
     Thread.current['mycount'] = count
     count += 1
   }
end

arr.each{|t| t.join;
	print t['mycount'], ', '}
puts "count = #{count}"


