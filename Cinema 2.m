#include <stdio.h>

int main() {
    int ingressos, pontos, continuar;
    int totingre = 0, totpontos = 0;
    float preco = 25.00;
    float valor, totacumu = 0.0;

    do {
        printf("Bem vindo ao Cinema\n");
        printf("Digite a quantidade de ingressos comprados: ");
        scanf("%d", &ingressos);

        pontos = ingressos; 
        valor = ingressos * preco; 

        totingre += ingressos; 
        totpontos += pontos; 
        totacumu += valor;

        printf("Cliente acumulou %d pontos.\n", pontos);
        printf("Valor total da compra: R$ %.2f\n", valor);

        printf("Deseja cadastrar outro cliente? (1-Sim / 0- Encerrar): ");
        scanf("%d", &continuar);
    } while (continuar != 0);

    printf("Sistema encerrado.\n");
    printf("Resumo final: %d ingressos comprados, %d pontos acumulados, R$ %.2f gastos.\n", 
           totingre, totpontos, totacumu);

    return 0;
}
}
