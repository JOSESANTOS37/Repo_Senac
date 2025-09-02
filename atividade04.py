n1 = float(input("Nota 1: "))
n2 = float(input("Nota 2: "))
opt = float(input("Optativa (ou -1 se não fez): "))

notas = [n1, n2]

if opt >= 0:
    i_min = 0 if notas[0] <= notas[1] else 1
    if opt > notas[i_min]:
        notas[i_min] = opt

media = sum(notas) / 2

if media >= 6:
    status = "Aprovado"
elif media < 3:
    status = "Reprovado"
else:
    status = "Exame"

print(f"Notas: {notas} | Média: {media:.2f} | Situação: {status}")