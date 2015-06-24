def get_bill
    loop do
        print 'Enter your bill: $'
        amount = gets.chomp.scan(/[.0-9]/).join().to_f
        return amount if amount != 0
    end
end


def calculate_tip(total, tip_percent)
    (total * tip_percent) + total
end


def get_tip
    loop do
        print 'Enter tip amount: %'
        tip = gets.chomp.scan(/[.0-9]/).join().to_f/100
         return tip if tip != 0
     end
end


def tip_calculator
    subtotal = get_bill
    tip = get_tip
    total = calculate_tip(subtotal,tip)
    puts "Your total bill is $#{total.round(2)}"
end

tip_calculator