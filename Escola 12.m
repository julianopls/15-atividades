#include <stdio.h>
#include <stdlib.h>

int main() {
    int alunos, provas = 4;
    float nota, soma, media, soma_geral = 0.0;
     
    printf("\033[1;35m");
    printf("----------BOLETIM------------\n");
    printf("\033[0m");
    printf("Digite o numero de alunos:\n");
    scanf("%d", &alunos);

    for (int i = 1; i <= alunos; i++) {
    soma = 0.0;
    
    printf("\033[1;35m");
    printf("\n----------Notas do aluno %d----------\n", i);
    printf("\033[0m");
    for (int j = 1; j <= provas; j++) {
    do {
    printf("Nota da prova %d:\n", j);
    scanf("%f", &nota);
    if (nota < 0 || nota > 10) {
    printf("Nota invalida! Digite uma nota entre 0 e 10.\n");
    }
    } while (nota < 0 || nota > 10);
    soma += nota;
    }
    media = soma / provas;
    soma_geral += media;
    printf("\033[1;33m");
    printf("Media do aluno %d: %.2f - %s\n", i, media, (media >= 6.0) ? "APROVADO" : "REPROVADO");
    printf("\033[0m");
    }

    float media_geral = soma_geral / alunos;
    printf("\033[1;35m");
    printf("\n\n------MEDIA FINAL DA TURMA--------\n\n");
    printf("\033[0m");
    printf("\033[1;33m");
    printf("Media geral dos %d alunos:%.2f\n", alunos, media_geral);
    printf("\033[0m");
    return 0;
}
