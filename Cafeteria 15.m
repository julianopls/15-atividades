#include <stdio.h>
#include <stdlib.h>

int main() {
    float notas[4];
    float soma = 0.0;
    float media;


    for (int i = 0; i < 4; i++) {
    printf("\033[1;35m");
    printf("----------CAFETERIA ON------------\n");
    printf("\033[0m");
    printf("\033[1;33m");
    printf("Digite a nota do cliente %d (0 a 10):\n", i + 1);
    printf("\033[0m");
    scanf("%f", &notas[i]);
    if (notas[i] < 0 || notas[i] > 10) {
    printf("Nota invalida! Digite um valor entre 0 e 10.\n");
    i--; 
    continue;
    }
    soma += notas[i];
    }


    media = soma / 4;
    printf("\033[1;35m");
    printf("----------MEDIA DO ATENDIMENTO------------\n");
    printf("\033[0m");
    printf("\033[1;33m");
    printf("\n\nMedia das notas: %.2f\n\n", media);
    printf("\033[0m");
    if (media >= 8) {
    printf("\033[1;33m");
    printf("Avaliacao: Atendimento bom!\n");
    } else if (media >= 5) {
    printf("Avaliacao: Atendimento razoavel.\n");
    } else {
    printf("\033[1;33m");
    printf("Avaliacao: Atendimento ruim.\n");
    printf("\033[0m");
    }

    return 0;
}
