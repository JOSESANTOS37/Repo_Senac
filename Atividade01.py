import math

pot_lamp = float(input("Potência da lâmpada (W): "))
larg = float(input("Largura do cômodo (m): "))
comp = float(input("Comprimento do cômodo (m): "))

area = larg * comp
pot_necessaria = 3 * area
qtd_lampadas = (pot_necessaria / pot_lamp)
qtd_bocais = (area / 3)

print(f"Área: {area:.2f} m²")
print(f"Potência total necessária: {pot_necessaria:.2f} W")
print(f"Quantidade de lâmpadas: {qtd_lampadas:.2f}")
print(f"Quantidade de bocais (1 a cada 3 m²): {qtd_bocais}")

