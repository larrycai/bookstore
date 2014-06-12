def onlinebookstore(book_number,other_order_category,delivery_address)
    print "hello"
    if (delivery_address == "gotland")
        return 1
    elsif (book_number <6)
        return 1
    elsif (other_order_category == "no")
        return 0
    else 
        return 1
    end
end

Given /^one customer (\d+) of books$/ do |number|
  @book_number = number.to_i
end

Given /^buy (\w+)$/ do |category|
  @category = category
  #print category
end

When /^select the address is (\w+)$/ do |address|
  @address = address
  @real_fee = onlinebookstore(@book_number, @category, @address)
end

Then /^order summary is (\d+)$/ do |fee|
  #print "heelo:", @book_number, fee
  
  #print real_fee
  @real_fee.to_i.should == fee.to_i
end

Then /^order summary is >(\d+)$/ do |fee|
  #print "heelo:", @real_fee.to_i," :", fee.to_i, "strange"
  @real_fee.to_i.should > fee.to_i 
end
