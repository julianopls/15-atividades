#include <stdio.h>
#include <stdlib.h>

int main() {
    int qntd;
    int filmes = 5;
    int nome = 100;
    char nomes[5][100];
    float precos[5];
    float total = 0.0;

    printf("\033[1;35m");
    printf("----------LOCADORA DE FILMES------------\n");
    printf("\033[0m");

    do {
    printf("Quantos filmes voce deseja alugar?\n");
    scanf("%d", &qntd);
    if (qntd < 1 || qntd > filmes) {
    printf("Numero invalido. Por favor, digite um numero entre 1 e 5.\n\n");
    }
    } while (qntd < 1 || qntd > filmes);

    getchar();

    for (int i = 0; i < qntd; i++) {
    printf("\033[1;33m");	
    printf("\nFilme %d\n", i + 1);
    printf("\033[0m");
    printf("Nome do filme:\n");
    scanf(" %[^\n]", nomes[i]);
    printf("Preco do filme (R$):\n");
    scanf("%f", &precos[i]);
    
	getchar();
    
    total += precos[i];
    }

    
    printf("\033[1;35m");
    printf("----------SEU CARRINHO DE COMPRAS------------\n");
    printf("\033[0m");
    for (int i = 0; i < qntd; i++) {
    printf("Filme %d: %s - R$ %.2f\n", i + 1, nomes[i], precos[i]);
    }

    printf("\033[1;35m");
    printf("----------------------------------\n");
    printf("\033[0m");
    printf("Total a pagar: R$ %.2f\n", total);

    return 0;
}
