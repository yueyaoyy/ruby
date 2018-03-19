#!/usr/local/bin/ruby
class Customer
	VAR1 = 100
	VAR2 = 200
	@@no_of_customers = 0
	def initialize(id, name, addr) 
	  @cust_id = id
	  @cust_name = name
	  @cust_addr = addr
	end

	def display_details()
	  puts "Customer id #@cust_id"
	  puts "Customer name #@cust_name"
          puts "Customer address #@cust_addr"
	end

	def total_no_of_customers()
	  @@no_of_customers += 1
	  puts "Total number of customers: #@@no_of_customers"
	end

	def show()
	  puts "第一个常量的值为#{VAR1}"
	  puts "第2个常量的值为#{VAR2}"
	end

	def showTime()
	  time1 = Time.new
	  time2 = Time.now 
	  puts "当前时间为：" + time1.inspect
          puts "当前时间为：" + time2.inspect
	  puts time1.year
	  puts time1.day
	  puts time1.wday
	  puts time1.yday
	  puts time1.strftime("%a")
	end
end

#创建对象
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

#调用方法
cust1.display_details()
cust1.total_no_of_customers()
cust1.show()
cust2.display_details()
cust2.total_no_of_customers()
cust2.show()
cust2.showTime()
