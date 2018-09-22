function areaTriangulo(base, altura)
  return base * altura / 2
end

function areaCirculo(raio)
  return 3.14159 * math.pow(raio, 2)
end

function areaTrapezio(base1, base2, altura)
  return ((base1 + base2) * altura) / 2
end

function areaParalelogramo(base, altura)
  return (altura == nil) and base * base or base * altura 
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

local entrada = split(io.read())
local a = entrada[1]
local b = entrada[2]
local c = entrada[3]

print("TRIANGULO: " .. string.format("%.3f",areaTriangulo(a, c)))
print("CIRCULO: " .. string.format("%.3f",areaCirculo(c)))
print("TRAPEZIO: " .. string.format("%.3f",areaTrapezio(a,b,c)))
print("QUADRADO: " .. string.format("%.3f",areaParalelogramo(b)))
print("RETANGULO: " .. string.format("%.3f",areaParalelogramo(a,b)))