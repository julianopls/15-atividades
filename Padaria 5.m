#include <stdio.h>

struct Produto {
    char nome[50];
    int codigo;
    float preco;
};

int main() {
    struct Produto produtos[5];
    int i;

    for (i = 0; i < 5; i++) {
        printf("\nProduto %d\n", i + 1);
        
        printf("Digite o nome do produto: ");
        scanf(" %[^\n]", produtos[i].nome); 
        
        printf("Digite o código do produto: ");
        
        if (scanf("%d", &produtos[i].codigo) != 1) {
            printf("Erro!Código inválido.\n");
            return 1;
        }
        printf("Digite o preço do produto (R$): ");
        
        if (scanf("%f", &produtos[i].preco) != 1 || produtos[i].preco < 0) {
            printf("Erro! Preço inválido.\n");
            return 1;
        }
    }

    
    printf("Produtos com preço maior que R$ 10,00:\n");
    
    for (i = 0; i < 5; i++) {
        if (produtos[i].preco > 10.00) {
            printf("Nome: %s, Código: %d, Preço: R$ %.2f\n", 
                   produtos[i].nome, produtos[i].codigo, produtos[i].preco);
        }
    }

    return 0;
}
