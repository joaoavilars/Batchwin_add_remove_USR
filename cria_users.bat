@echo off

for /f "tokens=1,* delims=: usebackq" %%a in ("users.txt") do (
net user %%a "%%b" /Add 2>nul 1>nul
NET LOCALGROUP "Usu rios da  rea de trabalho remota" %%a /add 1>nul
	
	if "%errorlevel%" Neq "0" (
		Echo Erro ao adicionar usu rio [%%a]
	) else (
		Echo Usu rio adicionado com sucesso [login %%a / senha %%b]
	)

)
::pause