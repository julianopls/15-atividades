#include <stdio.h>

int main() {
    float preços[10];
    float maior, menor;
    int i;

    for (i = 0; i < 10; i++) {
        printf("Digite o preço do produto %d: R$ ", i + 1);
        scanf("%f", &preços[i]);
    }

    maior = menor = preços[0];

  
    for (i = 1; i < 10; i++) {
        if (preços[i] > maior) {
            maior = preços[i];
        }
        if (preços[i] < menor) {
            menor = preços[i];
        }
    }

    printf("\nO produto mais caro custa: R$ %.2f\n", maior);
    printf("O produto mais barato custa: R$ %.2f\n", menor);

    return 0;
}
