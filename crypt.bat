@echo off


:choose
set /p "opr=Choose operation ([lpe]-encrypt, [lpd]-decrypt, [lkp]-lookup, [rsr]-restore, [clr]-clear): "

:operate
code-crypt %opr% - ue5/Content/Maps -
echo Stage 1:Maps - Done
code-crypt %opr% - ue5/Content/Scripts/Blueprints -
echo Stage 2:Blueprints - Done
code-crypt %opr% - ue5/Content/__ExternalActors__ -
code-crypt %opr% - ue5/Content/__ExternalObjects__ -
echo Stage 3 - Done

:end
pause
