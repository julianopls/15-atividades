#include <stdio.h>

int main() {
    int tipoCombustivel;
    float quantidade, total;

    printf("Posto de Gasolina Ibipiranga\n");
    printf("Escolha o tipo de combustível:\n");
    printf("1 - Gasolina (R$ 5.50/L)\n");
    printf("2 - Etanol (R$ 3.80/L)\n");
    printf("3 - Diesel (R$ 4.20/L)\n");
    scanf("%d", &tipoCombustivel);

    printf("Quantidade de litros: ");
    scanf("%f", &quantidade);

    switch(tipoCombustivel) {
        case 1:
            total = quantidade * 5.50;
            printf("Total a pagar: R$ %.2f\n", total);
            break;
        case 2:
            total = quantidade * 3.80;
            printf("Total a pagar: R$ %.2f\n", total);
            break;
        case 3:
            total = quantidade* 4.20;
            printf("Total a pagar: R$ %.2f\n", total);
            break;
        default:
            printf("Opção inválida.\n");
    }

    return 0;
}
