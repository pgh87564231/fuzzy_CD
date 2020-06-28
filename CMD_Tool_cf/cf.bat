@echo off
chcp 65001

if [%1]==[] (
	goto DIR_Path
) else (
	goto EveryThing_Serch
)


:DIR_Path
dir /s/b/a:d | fzf >C:\Tool\CMD_Tool_cf\cf_path.txt
set /P fuzzy_Path=<C:\Tool\CMD_Tool_cf\cf_path.txt
cd /d %fuzzy_Path%
goto END


:EveryThing_Serch
es /ad %1 | fzf >C:\Tool\CMD_Tool_cf\cf_path.txt
set /P fuzzy_Path=<C:\Tool\CMD_Tool_cf\cf_path.txt
cd /d %fuzzy_Path%
goto END


:END
