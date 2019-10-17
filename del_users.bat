@echo off
for /f "tokens=1,* delims=: usebackq" %%a in ("users.txt") do (
net user %%a /delete 1>nul

	
	if "%errorlevel%" Neq "0" (
		Echo Erro ao deletar usuario [%%a]
	) else (
		Echo Usu rio removido com sucesso [login %%a]
	)

)