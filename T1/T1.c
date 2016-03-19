#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char** aloca_vetor(char** clientes, int tamanho_vetor){
	int i;

    clientes = (char**) malloc(sizeof(char*) * tamanho_vetor);
    for(i=0; i<tamanho_vetor ; i++)
		clientes[i] = (char*)malloc(sizeof(char)*40);

    return clientes;
}

int compara(char* s1, char* s2){
    if(s1 == NULL || s2 == NULL)
        exit(0);

    return strcmp(s1, s2);
}

void tabela_html(char** clientes, int cont){
    if(clientes == NULL)
        printf("ERRO! Nao foi possivel criar tabela HTML");
        exit(0);
    }

    int i;
    FILE *th = fopen("tabela.html", "w+");

    fprintf(th, "<HEAD> <TITLE>Tabela de Vencedoras</TITLE> </HEAD> <BODY> <H1>Tabela de Vencedoras:</H1>");

    for(i = 0; i < cont; i++){
        fprintf(th, "-> %s<br>", clientes[i]);
    }
    fprintf(th, "</BODY>");
}

char** leitura(char** clientes){
    int i, j, contR;
    char s[200], linha[50], aux;
    FILE *arq;

    arq = fopen("clientes.txt", "r");
    i = j = contR = 0;

    while((aux = fgetc(arq)) != EOF){
        *(s+i) = aux;
        *(linha+j) = aux;
        if(aux == '\n'){
            *(linha+j+1) = '\0';
            if(linha[0] == 'R'){
                contR++;
            }
            j = 0;
        }
        else{
            j++;
        }
        i++;
    }
    *(s+i) = '\0';

    *(linha+j+1) = '\0';

    if(linha[0] == 'R'){
        contR++;
    }
    clientes = aloca_vetor(clientes, contR+1);

    i = j = contR = 0;

    while(*(s+i) != '\0'){
        *(linha+j) = *(s+i);
        if(*(s+i) == '\n'){
            *(linha+j+1) = '\0';
            if(linha[0] == 'R'){
                strcpy(clientes[contR], linha);
                contR++;
            }
            j = 0;
        }
        else{
            j++;
        }
        i++;
    }

    *(linha+j+1) = '\0';

    if(linha[0] == 'R'){
        strcpy(clientes[contR], linha);
        contR++;
    }

    qsort(clientes, (size_t)contR, sizeof(char*), compara);

    tabela_html(clientes, contR);

    return clientes;
}

int main(){
    char** clientes = leitura(clientes);

    free(clientes);

    return 1;
}
