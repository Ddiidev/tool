@echo off
::Pegando a cor das letras
tool color.atual.letra
set cor_Letra=%errorlevel%

::Pegando a cor do fundo
tool color.atual.fundo
set cor_fundo=%errorlevel%


tool color.set 10 0

::Pegando a posição da linha atual
tool pos.x
set pos_x=%errorlevel%

::Pegando a posição da coluna atual
tool pos.y
set pos_y=%errorlevel%

tool pos.set.x 5
tool pos.set.y 5
echo.Ol , mundo!

tool color.set %cor_letra% %cor_fundo%
tool pos.set.x %pos_x%
tool pos.set.y %pos_y%

pause

:Loop
echo.So vou sair se voce apertar Enter


for /f "delims=" %%i in ('tool getkey.ascii') do Set "key=%%i"
if %key% NEQ 13 ( Goto :Loop )
echo Pronto

::Load #1
tool echo "Carregando para sair["
for /l %%i in (1, 1, 20) do tool echo =
tool echo ]

echo.

::Load #2
tool echo "Carregando para sair"
for /l %%i in (1, 1, 20) do tool echo .

echo.

::Load #3
tool echo "Carregando para sair: "
for /l %%i in (1, 1, 20) do (
	tool pos.set.y 23
	tool echo %%i%%
)

pause>nul