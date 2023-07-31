ANO_ATUAL = 2023
nome = input("Insira seu nome: ")
while(True):
    try:
        ano = int(input("Insira o ano de seu nascimento (1922 e 2021): "))
        if (1922 <= ano <= 2021):
           print(f"{nome} completou ou completará {ANO_ATUAL-ano} anos em {ANO_ATUAL}!")
           break
        else:
            print("Entrada inválida. Digite um número dentro do intervalo.")
    except:
        print("Entrada inválida. Digite um número para seu ano de nascimento.")