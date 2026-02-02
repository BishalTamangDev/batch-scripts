@echo off
setlocal EnableDelayedExpansion

rem Rename all folders first
for /d %%D in (*) do call :rename "%%D"

rem Rename all files
for %%F in (*) do call :rename "%%F"

exit /b

:rename
set "old=%~1"
set "new=%~1"

rem Replace spaces and hyphens with underscore
set "new=%new: =_%"
set "new=%new:-=_%"

rem Remove all bracket types
set "new=%new:(=%"
set "new=%new:)=%"
set "new=%new:[=%"
set "new=%new:]=%"
set "new=%new:{=%"
set "new=%new:}=%"
set "new=%new:<=%"
set "new=%new:>=%"

rem Convert uppercase letters to lowercase
set "new=!new:A=a!"
set "new=!new:B=b!"
set "new=!new:C=c!"
set "new=!new:D=d!"
set "new=!new:E=e!"
set "new=!new:F=f!"
set "new=!new:G=g!"
set "new=!new:H=h!"
set "new=!new:I=i!"
set "new=!new:J=j!"
set "new=!new:K=k!"
set "new=!new:L=l!"
set "new=!new:M=m!"
set "new=!new:N=n!"
set "new=!new:O=o!"
set "new=!new:P=p!"
set "new=!new:Q=q!"
set "new=!new:R=r!"
set "new=!new:S=s!"
set "new=!new:T=t!"
set "new=!new:U=u!"
set "new=!new:V=v!"
set "new=!new:W=w!"
set "new=!new:X=x!"
set "new=!new:Y=y!"
set "new=!new:Z=z!"

rem Collapse multiple underscores into one
:cleanup
if "!new!" NEQ "!new:__=_!" (
    set "new=!new:__=_!"
    goto cleanup
)

rem Trim leading and trailing underscores
if "!new:~0,1!"=="_" set "new=!new:~1!"
if "!new:~-1!"=="_" set "new=!new:~0,-1!"

rem Rename only if the name changed
if not "%old%"=="%new%" (
    ren "%old%" "%new%"
)
exit /b
