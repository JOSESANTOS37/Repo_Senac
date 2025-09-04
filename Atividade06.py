produto = []
valor = []

while True:
    try:
        nome = input('Digite o nome do produto:')
        produto.append(nome)
        valor = int(input('Informe o valor do produto '))
        produto.append(valor)
        print('produto')
        sair = input('Deseja sai(S/N')
        if sair == 'S':
            break
    except:
        print ('Digite produto ou valor válido')

for i in produto:
   print(f' produto {produto}/ preço{valor}')
    
   
