# ENTRADA DE DADOS: Solicitar informações do veículo ao usuário
quantidade_rodas = int(input("Informe a quantidade de rodas do veículo: "))
peso_bruto = float(input("Informe o peso bruto em quilogramas do veículo: "))
quantidade_pessoas = int(input("Informe a quantidade de pessoas no veículo: "))

# PROCESSAMENTO: Verificação das condições
resultado = ""
if quantidade_rodas == 2 or quantidade_rodas == 3:
    resultado = 'Categoria A'
elif quantidade_rodas == 4 and quantidade_pessoas <= 8 and peso_bruto <= 3500:
    resultado = 'Categoria B'
elif quantidade_rodas >= 4 and peso_bruto > 3500 and peso_bruto <= 6000:
    resultado = 'Categoria C'
elif quantidade_rodas >= 4 and quantidade_pessoas > 8 and peso_bruto <= 6000:
    resultado = 'Categoria D'
else:
    resultado = 'Categoria E'

# SAÍDA DE DADOS: Mostrar o resultado
print("A melhor categoria de habilitação para o veículo é:", resultado)
