def is_valid(num)
  if num > 0 && num <= 10
    puts "Valid"
  else
    puts "Invalid"
  end
end

def fizzbuzz
  t = 100
  num = 1
  t.times do
    if (num % 3 == 0) && (num % 5 == 0)
      puts "FizzBuzz"
    elsif (num % 3 == 0)
      puts "Fizz"
    elsif (num % 5 == 0)
      puts "Buzz"
    else
      puts num.to_s
    end
    num = num + 1
  end
end

def sum_these_numbers(a,b)
  puts (a+b).to_s
end

def is_even(c)
  c % 2 == 0
end

def call_another(a,b)
  puts (a+b).to_s + ": " + is_even(a+b).to_s
end

def valid_date(month,day,year)
  if (month <= 12) && (month > 0) && (year > 0)
    if month == 2
      if year % 4 == 0
        day > 0 && day <= 29
      else
        day > 0 && day <= 28
      end
    elsif (month == 4) || (month == 6) || (month == 9) || (month == 11)
      day > 0 && day <= 30
    else
      day > 0 && day <= 31
    end
  else
    false
  end
end

def rps_game
  puts "Player 1 input:"
  player1 = gets.chomp
  puts "Player 2 input:"
  player2 = gets.chomp
  if player1.downcase == "rock"
    if player2.downcase == "rock"
      puts "It's a tie!"
    elsif player2.downcase == "paper"
      puts "Player 2 wins!"
    elsif player2.downcase == "scissors"
      puts "Player 1 wins!"
    else
      puts "ERROR: PLAYER 2 INVALID INPUT"
    end
  elsif player1.downcase == "paper"
    if player2.downcase == "rock"
      puts "Player 1 wins!"
    elsif player2.downcase == "paper"
      puts "It's a tie!"
    elsif player2.downcase == "scissors"
      puts "Player 2 wins!"
    else
      puts "ERROR: PLAYER 2 INVALID INPUT"
    end
  elsif player1.downcase == "scissors"
    if player2.downcase == "rock"
      puts "Player 2 wins!"
    elsif player2.downcase == "paper"
      puts "Player 1 wins!"
    elsif player2.downcase == "scissors"
      puts "It's a tie!"
    else
      puts "ERROR: PLAYER 2 INVALID INPUT"
    end
  else
    puts "ERROR: PLAYER 1 INVALID INPUT"
  end
end
