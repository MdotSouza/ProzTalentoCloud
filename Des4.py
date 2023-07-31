def calculadora(valor1, valor2, operacao):
    calculo = 0
    if (operacao == 1):
        calculo = valor1 + valor2
    elif (operacao == 2):
        calculo = valor1 - valor2
    elif (operacao == 3):
        calculo = valor1 * valor2
    elif (operacao == 4 and valor2 != 0):
        calculo = valor1 / valor2
    return calculo

TEXTO_MENU = """
1. Soma
2. Subtração
3. Multiplicação
4. Divisão
0. Sair
"""

while (True):
    op = int(input(f"""Selecione a operação: {TEXTO_MENU}""")) 
    if (op == 0):
        break
    
    num1 = int(input("Digite o primeiro número: ")) 
    num2 = int(input("Digite o segundo número: ")) 

    resultado = calculadora(num1, num2, op)
    print("Resultado: ", resultado)