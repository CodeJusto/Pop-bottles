def bottle_check(cash)
  @total_bottles += (cash/4).round
  @bottles_from_return = @total_bottles
end

def bottlecap_check(cash)
  @total_bottles += (cash/8).round
  @bottles_from_caps = @total_bottles
end

def return_it(cash)
  @total_bottles = 0
  @total_bottles += bottle_check(cash)
  @total_bottles += bottlecap_check(cash)
  @total_bottles
end

def get_cash
  cash = 0
  loop do 
    puts "How much money do you want to spend on pop?"
    cash = gets.chomp.to_i
    return_it(cash)
    puts "That will get you #{@total_bottles} bottles."
    puts "#{@bottles_from_return} bottles came from returning bottles."
    puts "#{@bottles_from_caps} bottles came from returning bottle caps."
    puts "You have #{@total_bottles%2} extra bottles and #{@total_bottles%4} extra bottle caps."
    puts "Want to continue? (yes/no)"
    break if gets.chomp.downcase == "no"
  end
end

get_cash