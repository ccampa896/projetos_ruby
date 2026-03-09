puts "Bem-vindo à calculadora!"
puts "Digite em branco para sair."
puts "Pontos flutuantes devem ser digitados com ponto (.)\n\n"

opers = [
  { msg: "Digite o primeiro número:", val: 0 },
  { msg: "Digite a operação (+, -, / ou *):", val: nil },
  { msg: "Digite o segundo número:", val: 0 }
]

while true
  opers.each do |oper|
    puts oper[:msg]
    str = gets.chomp
    return if str.empty?

    oper[:val] = str
  end

  print "Calculando o resultado: "
  n1 = opers[0][:val].match?(/\./) ? opers[0][:val].to_f : opers[0][:val].to_i
  n2 = opers[2][:val].match?(/\./) ? opers[2][:val].to_f : opers[2][:val].to_i

  case opers[1][:val]
  when "+"
    puts n1 + n2
  when "-"
    puts n1 - n2
  when "/"
    puts n1 / n2
  when "*"
    puts n1 * n2
  else
    puts "operação inválida"
  end

  puts "\n"
end
