require "date"

puts "Bem-vindo à calculadora de idade. Digite uma data de nascimento e vamos dar a idade da pessoa."
puts "A data tem que estar no format DD/MM/AAAA (dia, mês e ano). Para sair, deixe em branco.\n\n"

while true
  print "> "
  data = gets.chomp
  return if data.strip.empty?

  unless data.match?(/\A\d{2}\/\d{2}\/\d{4}\z/)
    puts "Data em formato inválido.\n\n"
    next
  end

  begin
    data = Date.parse(data)
  rescue StandardError => e
    puts "Data inválida!"
    next
  end

  atual = Date.today
  anos  = atual.year - data.year

  if atual.month < data.month ||
    (atual.month == data.month && atual.day < data.day)
    anos -= 1
  end

  puts "A pessoa tem #{anos} anos.\n\n"
end
