require "digest"

puts "Введите фразу для шифрования:"
string2encode = gets.encode("UTF-8").chomp

puts "Каким способом зашифровать?"
puts "1. MD5"
puts "2. SHA1"

method = ""
until %w[1 2].include? method
  method = gets.chomp
end

if method == 1
  result = Digest::MD5.hexdigest string2encode
else
  result = Digest::SHA1.hexdigest string2encode
end

puts "Результат: #{result}"
