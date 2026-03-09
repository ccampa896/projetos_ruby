puts "Digite um número inicial:"
start = gets.chomp.to_i

puts "Digite um número final:"
final = gets.chomp.to_i

if final <= start
  puts "Número final deve ser maior que inicial!"
  return
end

range = (start..final)
rand  = Random.rand(range)
msgs  = {
  -1 => "Mais alto",
  0  => "Você acertou!",
  1  => "Mais baixo"
}

while true
  puts "Qual número é?"
  number = gets.chomp.to_i

  unless range.include?(number)
    puts "O valor não está na faixa!"
    next
  end

  comp = number <=> rand
  puts msgs[comp]

  return if comp == 0
end
