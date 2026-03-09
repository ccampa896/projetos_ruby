puts "Bem-vindo à agenda! Aqui você pode cadastrar nomes e telefones."
puts "As opções são 'listar', 'guardar' e 'sair'."
puts "Se digitado outra coisa, será procurado o valor na agenda.\n\n"

agenda = {}

while true
  print "> "
  opt = gets.chomp

  case opt
  when /sair/i
    puts "Saindo ..."
    return
  when /listar/i
    agenda.each do |key, val|
      puts "#{key} = #{val}"
    end
    puts "Terminado de listar.\n\n"
  when /guardar/i
    puts "Digite o nome:"
    nome = gets.chomp.strip
    puts "Digite o telefone:"
    fone = gets.chomp.strip

    if nome.size < 1 || fone.size < 1
      puts "Precisa ter conteúdo"
      next
    end

    agenda[nome] = fone
    puts "Armazenado.\n\n"
  else
    fone = agenda[opt]
    puts fone ? fone : "Não encontrado"
  end
end
