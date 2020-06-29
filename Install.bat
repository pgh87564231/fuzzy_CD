set now_path=%~dp0

IF EXIST now_path\CMD_Tool_cf (
	echo "Yes Forder exist"
	copy /Y %now_path%\CMD_Tool_cf C:\Tool\CMD_Tool_cf
) ELSE (
	echo "No Forder not exist"
	mkdir C:\Tool\CMD_Tool_cf
	copy /Y %now_path%\CMD_Tool_cf C:\Tool\CMD_Tool_cf
)

REM Powershell.exe -executionpolicy remotesigned -File C:\Tool\CMD_Tool_cf\Set_Env.ps1
REM DEL /F C:\Tool\CMD_Tool_cf\Set_Env.ps1
setx PATH "$env:path;C:\Tool\CMD_Tool_cf"

msiexec.exe /i C:\Tool\CMD_Tool_cf\Everything-1.4.1.969.x64.msi
Pause
DEL C:\Tool\CMD_Tool_cf\Everything-1.4.1.969.x64.msi








