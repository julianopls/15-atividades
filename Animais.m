#include <stdio.h>
#include <stdlib.h>

struct Animal {
    char tipo[30];
    int idade;
    char nome[30];
};

void exibirAnimaisMaisVelhos(struct Animal animais[], int tamanho) {
    printf("\033[1;33m");
    printf("\n-----Animais com mais de 5 anos-----\n");
    printf("\033[0m");

    int encontrados = 0;
    for (int i = 0; i < tamanho; i++) {
    if (animais[i].idade > 5) {
    printf("%-10s: %-10s (%2d anos)\n", animais[i].tipo, animais[i].nome, animais[i].idade);
    encontrados = 1;
    }
    }

    if (!encontrados) {
    printf("Nenhum animal com mais de 5 anos encontrado.\n");
    }
}

int main() {
    struct Animal animais[5];
    int quantidade;

    printf("\033[1;35m");
    printf("\n-----SEGREDO DOS ANIMAIS----\n");
    printf("\033[0m");

    do {
    printf("\033[1;33m");
    printf("Quantos animais deseja cadastrar (1 a 5)?\n");
    printf("\033[0m");
    scanf("%d", &quantidade);
    getchar();
    if (quantidade < 1 || quantidade > 5) {
    printf("Quantidade invalida. Digite um numero entre 1 e 5.\n\n");
    printf("Pressione Enter para tentar novamente...");
    getchar();
    }
    } while (quantidade < 1 || quantidade > 5);

    for (int i = 0; i < quantidade; i++) {
    printf("\033[1;33m");
    printf("\nAnimal #%d\n", i + 1);
    printf("\033[0m");
    
    printf("Tipo de animal?\n");
    scanf(" %29[^\n]", animais[i].tipo);
    getchar();
    
    printf("Nome dele(a):\n");
    scanf(" %29[^\n]", animais[i].nome);
    getchar();
    
    printf("Idade:\n");
    scanf("%d", &animais[i].idade);
    getchar();
    }

    exibirAnimaisMaisVelhos(animais, quantidade);

    printf("\nPressione Enter para sair...");
    getchar();

    return 0;
}
