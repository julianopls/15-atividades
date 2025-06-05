#include <stdio.h>
#include <stdlib.h>

struct Carro {
    char marca[50];
    int ano;
    int km;
};

void listarCarrosAltaKm(struct Carro carros[], int total) {
	printf("\033[1;35m");
    printf("----------Carros com mais de 100.000 km rodados------------\n");
    printf("\033[0m");
    int encontrados = 0;
    for (int i = 0; i < total; i++) {
    if (carros[i].km > 10000) {
    printf("\033[1;33m");   	
    printf("Marca: %s | Ano: %d | Quilometragem: %d km\n",carros[i].marca, carros[i].ano, carros[i].km);
    printf("\033[0m");
    encontrados++;
    }
    }

    if (encontrados == 0) {
    printf("Nenhum carro com mais de 10.000 km encontrado.\n");
    }
}

int main() {
    const int totalCarros = 3;
    struct Carro carros[5];
    for (int i = 0; i < totalCarros; i++) {
    	
    printf("\033[1;35m");
    printf("----------Oficina AutoCheck------------\n");
    printf("\033[0m");
    printf("\033[1;33m");
    printf("Cadastro do Carro %d\n", i + 1);
    printf("\033[0m");
    
    
    printf("Marca:\n");
    scanf(" %[^\n]", carros[i].marca);
    
    printf("Ano:\n");
    scanf("%d", &carros[i].ano);
    
    printf("Quilometragem:\n");
    scanf("%d", &carros[i].km);
    printf("\n");
    }
    listarCarrosAltaKm(carros, totalCarros);

    return 0;
}
