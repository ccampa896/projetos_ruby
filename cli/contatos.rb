contatos = []

while true
  puts "Lista de contatos:"
  puts "1. Adicionar contato"
  puts "2. Listar contatos"
  puts "3. Buscar contato"
  puts "4. Sair"
  print "Escolha uma opção: "
  opcao = gets.chomp.to_i
  unless (1..4).include?(opcao)
    puts "Opção inválida. Tente novamente."
    next
  end

  case opcao
  when 1
    print "Digite o nome do contato: "
    nome = gets.chomp
    print "Digite o telefone do contato: "
    telefone = gets.chomp
    contatos << { nome: nome, telefone: telefone }
    puts "Contato adicionado com sucesso!"
  when 2
    puts "Contatos:"
    contatos.each_with_index do |contato, index|
      puts "#{index + 1}. #{contato[:nome]} - #{contato[:telefone]}"
    end
  when 3
    print "Digite o nome do contato que deseja buscar: "
    nome_busca = gets.chomp
    contato_encontrado = contatos.find { |contato| contato[:nome].downcase == nome_busca.downcase }
    if contato_encontrado
      puts "Contato encontrado: #{contato_encontrado[:nome]} - #{contato_encontrado[:telefone]}"
    else
      puts "Contato não encontrado."
    end
  when 4
    puts "Saindo..."
    break
  end

end