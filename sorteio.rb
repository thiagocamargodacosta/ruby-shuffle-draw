# Saber quantas secoes compoem a prova
puts "Bem vindo ao sorteador que nao te deixa na mao"
puts "Entre com o numero de secoes da prova: "
num_secoes = gets.to_i

# Saber quantas questoes por secao
arr_questoes_por_secao = Array.new

0.upto(num_secoes - 1) do |i|
    
    puts "Numero de questoes da secao #{i + 1}: "
    input = gets.to_i
    arr_questoes_por_secao.push(1..input)
    
end

# Teste tamanho do vetor de questoes por secao -- OK!
#puts "O comprimento do vetor de questoes por secao e #{arr_questoes_por_secao.size}"
#puts "Conferindo... A prova possui #{arr_questoes_por_secao.size} secoes"

# ================================================

# Saber quantas questoes serao sorteadas por secao
arr_sorteadas_por_secao = Array.new

0.upto(num_secoes - 1) do |i|   

   puts "Numero de sorteadas para secao #{i + 1}: "
   s = gets.to_i
   arr_sorteadas_por_secao.push(s)

end

# Teste de quantas questoes serao sorteadas por secao -- OK!
#puts "Confira se o vetor de sorteadas por secao tem o mesmo tamanho que o vetor de secoes"
#puts "Tamanho sorteadas por secao: #{arr_sorteadas_por_secao.size}"
#puts "Tamanho vetor de secoes: #{arr_questoes_por_secao.size}"

# ===============================================
# Realizar o sorteio

sorteadas = Array.new
embaralhado = Array.new
aux_range = Array.new

0.upto(num_secoes - 1) do |i|
    
    puts "=" * 42
    puts "Sorteio da secao #{i + 1}"
    puts "Sorteando #{arr_sorteadas_por_secao[i]} questoes..."
    
    aux_range = arr_questoes_por_secao[i].to_a

    puts "Aux range recebeu uma range e corresponde ao vetor: #{aux_range}"

    embaralhado = aux_range.shuffle

    puts "Embaralhando aux_range gerou o vetor: #{embaralhado}"

    # O sorteio e realizado por meio da escolha dos primeiros n numeros do vetor embaralhado
    sorteadas = embaralhado.take(arr_sorteadas_por_secao[i])
    
    puts "Questoes sorteadas do vetor embaralhado: #{sorteadas}"

    
end

# Espero que tenha funcionado
