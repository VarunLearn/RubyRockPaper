# puts "Please enter a username"
# username = gets.chomp
# puts "Please enter a password"
# password = gets.chomp

def same(u, p)
  u == p
end


def long_enough(word)
  word.length >= 6
end


def does_not_contain_special(word)
  if word.include?("!") || word.include?("#") || word.include?("$")
    false
  else
    true
  end
end


def contains_special(word)
  !does_not_contain_special(word)
end

def has_digit(word)
  if word.include?("0") || word.include?("1") || word.include?("2") || word.include?("3") || word.include?("4") || word.include?("5") || word.include?("6") || word.include?("7") || word.include?("8") || word.include?("9")
    true
  else
    false
  end
end

def has_upper_and_lowercase(word)
  if word.downcase == word
    false
  elsif word.upcase == word
    false
  else
    true
  end
end

def validate_password
  puts "Please enter a username"
  username = gets.chomp
  puts "Please enter a password"
  password = gets.chomp

  if !same(username, password) && long_enough(username) && long_enough(password) && does_not_contain_special(username) && contains_special(password) && has_digit(password) && has_upper_and_lowercase(password)
    return true
  else
    return false
  end
end
