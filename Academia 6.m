#include <stdio.h>

typedef struct {
    char nome[50];
    int idade;
    float imc;
} Aluno;

void classificaIMC(Aluno aluno) {
    printf("Aluno: %s\n", aluno.nome);
    
    if (aluno.imc > 30) {
        printf("Classificação: Obeso (IMC: %.2f)\n", aluno.imc);
    } else if (aluno.imc >= 25 && aluno.imc <= 30) {
        printf("Classificação: Sobrepeso (IMC: %.2f)\n", aluno.imc);
    } else if (aluno.imc >= 0) {
        printf("Classificação: Saudável (IMC: %.2f)\n", aluno.imc);
    } else {
        printf("Erro: IMC inválido (IMC: %.2f)\n", aluno.imc);
    }
}

int main() {

    Aluno aluno1 = {"João", 20, 32.5};
    Aluno aluno2 = {"Maria", 19, 27.0};
    Aluno aluno3 = {"Ana", 21, 22.3};

    classificaIMC(aluno1);
    classificaIMC(aluno2);
    classificaIMC(aluno3);
    
    
}
