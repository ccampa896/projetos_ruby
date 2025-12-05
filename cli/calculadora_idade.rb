require 'date'

while true
  puts "1. Calcular Idade"
  puts "2. Sair"
  print "Escolha uma opção: "
  opcao = gets.chomp.to_i
  unless [1, 2].include?(opcao)
    puts "Opção inválida. Tente novamente."
    next
  end
  begin
    case opcao
      when 1
        print "Digite sua data de nascimento (DD/MM/AAAA): "
        data_nascimento = gets.chomp
        unless data_nascimento =~ /^\d{2}\/\d{2}\/\d{4}$/
          raise "Formato de data inválido. Use DD/MM/AAAA."
        end
        data_nascimento = Date.strptime(data_nascimento, '%d/%m/%Y')
        data_atual = Date.today
        idade = data_atual.year - data_nascimento.year
        puts "Sua idade é: #{idade} anos."
      when 2
        puts "Saindo..."
        break
    end
  rescue => e
    puts "#{e.message}"
  end
end