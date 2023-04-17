
# Tool (Nome genérico demais 😁)

Bem esse foi um script muito simples que fiz a muito tempo atrás, cois de 2016/2017 em freebasic e por que eu fiz? Bem eu frequentava o fórum [Batch-Satti](https://batch-satti.forumeiros.com/) e apareceu um pedido de um cara de manipulação do console com o batch, mas o batch puro não faz muito! e também queria colocar em prática o freebasic que tinha acabado de aprender e foi ai que decidi parar de usar o freebasic 'kkkkk(😌)

_Estou subindo esse código só pra deixar registrado a minha história 😁_
## Documentação

Não tem muita coisa toda documentação é possível pegar com o `> Tool.exe help`
Mas vou deixar abaixo também.

```
      ===== Funções =====
##CORES
color.set         -  Altera a cor atual;
color.atual.letra -  Pega a cor atual das letras;
color.atual.fundo -  Pega a cor atual do fundo;

##POSIÇÃO
pos.x             -  Pega a posição da coluna atual;
pos.y             -  Pega a posição da linha atual;
pos.set.x         -  Determinar um nova posição de coluna;
pos.set.y         -  Determinar um nova posição para linha;

##TEXT
echo              -  Exibe um texto sem quebrar a linha;
char              -  Retorn a letra para o código ASCII;
ascii             -  Retorn o código ASCII para a letra;
getkey.char       -  Pega apenas um caractere precionado;
getkey.ascii      -  Pega o código do caractere precionado;


      ===== Como usar =====
>color.set [letra] [fundo]
ex:  tool.exe color.set 15 7

>color.atual.letra
ex: tool.exe color.atual.letra
    echo %errorlevel%

>color.atual.fundo
ex: tool.exe color.atual.fundo
    echo %errorlevel%

>pos.x
ex: tool.exe pos.x
    echo %errorlevel%

>pos.y
ex: tool.exe pos.y
    echo %errorlevel%

>pos.set.x [linha]
ex: tool.exe pos.set.x 2

>pos.set.y [coluna]
ex: tool.exe pos.set.y 2

>echo [texto]
ex:  tool.exe echo Meu "texto"

>char [Código ascii]
ex: tool.exe char 97

>ascii [letra]
ex: tool.exe ascii a

>getkey.char
ex: tool.exe getkey.char

>getkey.ascii
ex: tool.exe getkey.ascii
```


## Licença

[MIT](https://choosealicense.com/licenses/mit/)

