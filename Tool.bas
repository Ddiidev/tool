static as string crlf, lf
crlf = chr(13)&chr(10)
lf = chr(13)
declare function split(in as string, char as string, i as integer) as string

if (command(1) = "help") or (command(1) = "") then
     print "Autor          : Andr‚ Luiz"&lf
     print "VersÆo         : 1.0"&lf
     print "Linguagem(DEV) : FreeBasic.net"&crlf
     print "      ===== Fun‡äes ====="&lf

     print "##CORES"&lf
     print "color.set         -  Altera a cor atual;"&lf
     print "color.atual.letra -  Pega a cor atual das letras;"&lf
     print "color.atual.fundo -  Pega a cor atual do fundo;"&crlf

     print "##POSI€ÇO"&lf
     print "pos.x             -  Pega a posi‡Æo da coluna atual;"&lf
     print "pos.y             -  Pega a posi‡Æo da linha atual;"&lf
     print "pos.set.x         -  Determinar um nova posi‡Æo de coluna;"&lf
     print "pos.set.y         -  Determinar um nova posi‡Æo para linha;"&crlf
     
     print "##TEXT"&lf
     print "echo              -  Exibe um texto sem quebrar a linha;"&lf
     print "char              -  Retorn a letra para o c¢digo ASCII;"&lf
     print "ascii             -  Retorn o c¢digo ASCII para a letra;"&lf
     print "getkey.char       -  Pega apenas um caractere precionado;"&lf
     print "getkey.ascii      -  Pega o c¢digo do caractere precionado;"&lf
     print crlf & crlf;
     
     print "      ===== Como usar ====="&lf
     print ">color.set [letra] [fundo]"&lf
     print "ex:  tool.exe color.set 15 7"&crlf
     
     print ">color.atual.letra"&lf
     print "ex: tool.exe color.atual.letra"&lf
     print "    echo %errorlevel%"&crlf

     print ">color.atual.fundo"&lf
     print "ex: tool.exe color.atual.fundo"&lf
     print "    echo %errorlevel%"&crlf
     
     'pos
     
     print ">pos.x"&lf
     print "ex: tool.exe pos.x"&lf
     print "    echo %errorlevel%"&crlf

     print ">pos.y"&lf
     print "ex: tool.exe pos.y"&lf
     print "    echo %errorlevel%"&crlf

     print ">pos.set.x [linha]"&lf
     print "ex: tool.exe pos.set.x 2"&crlf

     print ">pos.set.y [coluna]"&lf
     print "ex: tool.exe pos.set.y 2"&crlf
     
     'text
     
     print ">echo [texto]"&lf
     print "ex:  tool.exe echo Meu ""texto"""&crlf
     
     print ">char [C¢digo ascii]"&lf
     print "ex: tool.exe char 97"&crlf

     print ">ascii [letra]"&lf
     print "ex: tool.exe ascii a"&crlf

     print ">getkey.char"&lf
     print "ex: tool.exe getkey.char"&crlf

     print ">getkey.ascii"&lf
     print "ex: tool.exe getkey.ascii"&crlf
     if (command(1) = "") then sleep end if
elseif (command(1) = "color.set") then
     dim c(1) as integer
     dim currentColor as Uinteger
     currentColor = Color()

     if (command(2)="") then
          end 0
     elseif (command(3)="") then
          end 0
     end if
     c(0)=cint(command(2))
     c(1)=cint(command(3))

     if (c(0)=-1) then
          c(0) = LoWord(currentColor)
     elseif (c(1)=-1) then
          c(1) = HiWord(currentColor)
     end if
     color c(0), c(1)
elseif (command(1) = "color.atual.letra") then
     dim as integer col, fg
     col = Screen(1, 1, 1)
     fg = col And &HF
     end fg
elseif (command(1) = "color.atual.fundo") then
     dim as integer col, bg
     col = Screen(1, 1, 1)
     bg = (col Shr 4) And &HF
     end bg
elseif (command(1) = "pos.x") then
     end pos()
elseif (command(1) = "pos.y") then
     end csrlin()
elseif (command(1) = "pos.set.x") then
     locate cint(command(2))
elseif (command(1) = "pos.set.y") then
     locate ,cint(command(2))
elseif (command(1) = "echo") then
     print command(2);
elseif (command(1) = "getkey.char") then
     print chr(GetKey);
elseif (command(1) = "getkey.ascii") then
     print asc(input(1));
elseif (command(1) = "char") then
     print chr(cuint(command(2)));
elseif (command(1) = "ascii") then
     print asc(command(2));
end if

function split(in as string, char as string, i as integer) as string
    dim a as integer
    dim x as integer = -1
    dim temp as string
    dim return_(0 to 2) as string
    for a=1 to len(in)+1 step 1
        if (mid(in, a, 1) = ",") then
            x+=1
            return_(x)  = temp
            temp       = ""
        else
            temp &= mid(in, a, 1)
        end if
    next a
    return return_(i)
end function
