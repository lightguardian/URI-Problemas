function maiorAB(a, b) 
  return (a + b + math.abs(a - b))/ 2 --Seria mais ortodoxico utilizar o proprio comparador da linguagem
end

function maiorN(...)

  local argumentos = ...  
  local maior
 
  for i in ipairs(argumentos) do
    maior = (maior == nil) and maiorAB(argumentos[1],argumentos[2]) or maiorAB(maior, argumentos[i])
  end
  
  return maior
  
end

function split(valor)
  local table =  {}
  local i = 1

  for v in string.gmatch(valor, "%S+") do
    table[i] = v
    i = i + 1
  end

  return table

end

print(maiorN(split(io.read())) .. " eh o maior")

