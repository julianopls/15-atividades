#include <stdio.h>
#include <stdlib.h>

int main(){
    int quartos;
    float ocupaçao=0, taxaocupacao;
    
    for(int i=0;i<10;i++){
        printf("quarto %d ocupado?: ",i+ 1);
        scanf("%d",&quartos);
        if(quartos==1){
            ocupaçao++;
        }
    }
    
    taxaocupacao=(ocupaçao/10)*100;
    printf("taxa de ocupaçao: %.2f%%",taxaocupacao);

return 0;
}
