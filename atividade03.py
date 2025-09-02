od_ini = float(input("Odômetro inicial (km): "))
od_fim = float(input("Odômetro final (km): "))
litros = float(input("Litros consumidos: "))
receita = float(input("Valor recebido dos passageiros (R$): "))

dist = od_fim - od_ini
consumo = dist / litros if litros > 0 else 0.0
gasto = litros * 4.87
lucro = receita - gasto

print(f"Distância: {dist:.2f} km | Consumo: {consumo:.2f} km/L")
print(f"Gasto com combustível: R${gasto:.2f}")
print(f"Lucro líquido: R${lucro:.2f}")

