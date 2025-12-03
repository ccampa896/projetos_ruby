def obter_numero()
  begin
    puts "Digite o primeiro número: "
    num1 = Float(gets)
  rescue ArgumentError, TypeError
    puts "Informe um número válido."
    retry
  end

  begin
    puts "Digite o segundo número: "
    num2 = Float(gets)
  rescue ArgumentError, TypeError
    puts "Informe um número válido."
    retry
  end

  return num1, num2
end

begin
  puts "Calculadora Simples em Ruby"
  puts "Escolha a operação:"
  puts "1. Adição (+)"
  puts "2. Subtração (-)"
  puts "3. Multiplicação (*)"
  puts "4. Divisão (/)"
  puts "5. Sair"
  op = Integer(gets, exception: false)
  raise ArgumentError unless (1..5).cover?(op)
rescue ArgumentError, TypeError
  puts "Opção inválida. Digite um número entre 1 e 5."
  retry
end

case op
when 1
  num1, num2 = obter_numero()
  resultado = num1 + num2
  puts "Resultado: #{num1} + #{num2} = #{resultado}"
when 2
  num1, num2 = obter_numero()
  resultado = num1 - num2
  puts "Resultado: #{num1} - #{num2} = #{resultado}"
when 3
  num1, num2 = obter_numero()
  resultado = num1 * num2
  puts "Resultado: #{num1} * #{num2} = #{resultado}"
when 4
  begin
    num1, num2 = obter_numero()
    raise ZeroDivisionError if num2.zero?
  rescue ZeroDivisionError
    puts "Erro: Divisão por zero não é permitida."
    retry
  end
  resultado = num1 / num2
  puts "Resultado: #{num1} / #{num2} = #{resultado}"
when 5
  puts "Saindo da calculadora. Até mais!"
  exit
end