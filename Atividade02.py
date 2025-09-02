
comp = float(input("Comprimento (m): "))
larg = float(input("Largura (m): "))
alt = float(input("Altura (m): "))

area_paredes = 2 * (comp + larg) * alt
caixas = math.ceil(area_paredes / 1.5)

print(f"Área total das paredes: {area_paredes:.2f} m²")
print(f"Caixas de azulejo necessárias: {caixas}")