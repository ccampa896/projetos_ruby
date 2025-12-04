puts "Jogo da Adivinhação"
puts "Escolha o primeiro número do intervalo (apenas número inteiros): "
num1 = gets.chomp.to_i
puts "Escolha o segundo número do intervalo (apenas número inteiros): "
num2 = gets.chomp.to_i

secreto = rand(num1..num2)

while true
  puts "Tente adivinhar o número secreto entre #{num1} e #{num2}: "
  palpite = gets.chomp.to_i

  if palpite < secreto
    puts "O número secreto é maior que #{palpite}."
  elsif palpite > secreto
    puts "O número secreto é menor que #{palpite}."
  else
    puts "Parabéns! Você adivinhou o número secreto: #{secreto}."
    break
  end
end