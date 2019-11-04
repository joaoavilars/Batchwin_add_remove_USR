@echo off

for /f "tokens=1,* delims=: usebackq" %%a in ("users.txt") do (
net user %%a "%%b" 2>nul 1>nul
	
	if "%errorlevel%" Neq "0" (
		Echo Erro ao alterar senha de [%%a]
	) else (
		Echo Senha alterada: [login %%a / senha %%b]
	)

)
::pause