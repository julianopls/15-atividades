#include <stdio.h>
#include <stdlib.h>

int main() {
    int codigo;
    int max_pecas = 5;
    int qntd = 0;
    const char *pecas[5];
    float precos[5];
    float total = 0.0;

    printf("\033[1;35m");
    printf("----------KATIVAS DROP------------\n");
    printf("\033[0m");

    while (qntd < max_pecas) {
    printf("\nDigite o codigo da peca que voce deseja\n[1]-Camisa\n[2]-Calca\n[3]-Casaco\n");
    scanf("%d", &codigo);
    if (codigo < 1 || codigo > 3) {
    printf("Codigo invalido. Por favor, digite 1, 2 ou 3.\n");
    continue; 
    }
    switch (codigo) {
    case 1:
    pecas[qntd] = "Camisa";
    precos[qntd] = 79.99;
    break;
    
    case 2:
    pecas[qntd] = "Calca";
    precos[qntd] = 189.00;
    break;
    
    case 3:
    pecas[qntd] = "Casaco";
    precos[qntd] = 290.00;
    break;
    
    }
    printf("\033[1;33m");
    printf("Item adicionado ao carrinho: %s - R$ %.2f\n", pecas[qntd], precos[qntd]);
    printf("\033[0m");
      
    qntd++;
    
    if (qntd < max_pecas) {
    char resp;
    printf("Deseja adicionar mais alguma peca? (Digite s ou n)\n");
    scanf(" %c", &resp);
    if (resp != 's' && resp != 'S') {
    break;
    }
    }
    }

    
    printf("\033[1;35m");
    printf("----------SEU CARRINHO DE COMPRAS------------\n");
    printf("\033[0m");
    for (int i = 0; i < qntd; i++) {
    printf("%d - %s - R$ %.2f\n", i + 1, pecas[i], precos[i]);
    total += precos[i];
    }
    printf("\033[1;35m");
    printf("----------------------------------\n");
    printf("\033[0m");
    printf("Total a pagar: R$ %.2f\n", total);

    return 0;
}
