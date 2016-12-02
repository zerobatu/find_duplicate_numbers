require 'benchmark'

a = [1,2,3,4,2,2,4,5,7,8,4,6,7,89,32,45,6,4,2,6,7,436,7,7,23,2,2,2,]

puts Benchmark.measure { a.select{ |e| a.count(e) > 1 }.uniq }

puts Benchmark.measure { a.inject(a.inject({}) {|h,n| h[n]=0; h}) { |h,n| h[n]+=1; h }.reject{|k,v| v==1}.keys }
