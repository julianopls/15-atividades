#include <stdio.h>
#include <stdlib.h>

struct Produto {
    char nome[50];
    int quantidade;
    float preco;
};

void calcularValorTotal(struct Produto produtos[], int tamanho) {
    float total = 0.0;
    for (int i = 0; i < tamanho; i++) {
    total += produtos[i].quantidade * produtos[i].preco;
    }
    printf("\033[1;35m");
    printf("----------TOTAL DE ESTOQUE EM $------------\n");
    printf("\033[0m");
    printf("\033[1;33m");
    printf("\nValor total em estoque: R$ %.2f\n", total);
    printf("\033[0m");
}

int main() {
    struct Produto produtos[5];
    for (int i = 0; i < 5; i++) {
    printf("\033[1;35m");
    printf("----------MERCADO GUARANI------------\n");
    printf("\033[0m");
    printf("\033[1;33m");
    printf("Produto %d\n", i + 1);
    printf("\033[0m");
    printf("Nome:\n");
    scanf(" %[^\n]", produtos[i].nome);
    printf("Quantidade:\n");
    scanf("%d", &produtos[i].quantidade);
    printf("Preco\nR$");
    scanf("%f", &produtos[i].preco);
    printf("\n");
    }
    calcularValorTotal(produtos, 10);

    return 0;
}
