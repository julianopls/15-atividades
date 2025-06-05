#include <stdio.h>
#include <stdlib.h>

struct Livro {
    char nome[100];
    int ano;
};

int main() {
    struct Livro livros[4];

    for (int i = 0; i < 8; i++) {
    printf("\033[1;33m");
    printf("\n-------Livraria anos 2000-------\n");
    printf("\033[0m");
    printf("Cadastro do livro %d\n", i + 1);
    printf("Nome:\n");
    scanf("%s", livros[i].nome);
    printf("Ano de publicacao do livro:\n");
    scanf("%d", &livros[i].ano);
    printf("\n");
    }
    printf("Livros publicados antes do ano 2000:\n");
    for (int i = 0; i < 4; i++) {
    if (livros[i].ano < 2000) {
    printf("Nome: %s  Ano: %d\n", livros[i].nome, livros[i].ano);
    }
    }
    return 0;
}
