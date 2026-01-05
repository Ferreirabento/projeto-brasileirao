
lista_de_alunos = [1, 2, 3, 5]

insercao = int(input('novo aluno: '))
for i in lista_de_alunos:
    if insercao > i:
        lista_de_alunos.insert(insercao[i])


print(lista_de_alunos)
