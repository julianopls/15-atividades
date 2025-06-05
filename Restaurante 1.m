#include <locale.h>
#include <stdio.h>

int main() {
    setlocale(LC_ALL, "");
    float valor, valorC, desconto; 
    int pratos;

    printf("Valor total da conta: \n");
    scanf("%f", &valorC);
    printf("Número de pratos (incluindo bebidas e sobremesas) pedidos: \n");
    scanf("%d", &pratos);
    

    if (pratos > 3) {
        desconto = valorC * 0.10; 
    }


    valor = valorC - desconto;

    if (desconto > 0) {
        printf("Desconto: R$ %.2f\n", desconto);
        printf("Valor final da conta: R$ %.2f\n", valor);
    } else {
        printf("Nenhum desconto aplicado.\n");
        printf("Valor final da conta: R$ %.2f\n", valorC);
    }

    return 0;
}
