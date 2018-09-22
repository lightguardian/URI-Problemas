function split(valor)
  local table =  {}
  local i = 1

  for v in string.gmatch(valor, "%S+") do
    table[i] = v
    i = i + 1
  end

  return table

end

valor1 = split(io.read())
valor2 = split(io.read())

print("VALOR A PAGAR: R$ " .. string.format("%.2f",valor1[2] * valor1[3] + valor2[2] * valor2[3]))



