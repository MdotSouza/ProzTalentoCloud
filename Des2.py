NUM_ANDARES = 20

print("****** CÓDIGO 1 - LAÇO FOR ******")
print("Andares:", end=" ")
for num in range(1,NUM_ANDARES+1):
    if num != 13:
        print(num, end=" ")

print("\n")

print("\n****** CÓDIGO 2 - LAÇO WHILE ******")
print("Andares:", end=" ")
contador = 1
while(contador <= NUM_ANDARES):
    if contador != 13:
        print(contador, end=" ")
    contador+= 1

print("\n")

#Como a linguagem Python não implementa DO WHILE, realizei uma emulação
print("\n****** CÓDIGO 3 - LAÇO DO WHILE ******")
print("Andares:", end=" ")
contador = 1
while(True):
    #DO
    if contador != 13:
        print(contador, end=" ")
    contador+= 1

    # WHILE
    if not(contador <= NUM_ANDARES):
        break

print("\n")

print("\n****** CÓDIGO 4 - CONTAGEM INVERSA ******")
print("Andares:", end=" ")
for num in range(NUM_ANDARES, 0, -1):
    if num != 13:
        print(num, end=" ")