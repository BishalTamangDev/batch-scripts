@echo off
setlocal EnableDelayedExpansion

rem Ask for common name
set /p base=Enter common name for all files: 

rem Replace spaces with underscore and hyphens with underscore
set "base=%base: =_%"
set "base=%base:-=_%"

rem Convert input to lowercase
set "base=!base:A=a!"
set "base=!base:B=b!"
set "base=!base:C=c!"
set "base=!base:D=d!"
set "base=!base:E=e!"
set "base=!base:F=f!"
set "base=!base:G=g!"
set "base=!base:H=h!"
set "base=!base:I=i!"
set "base=!base:J=j!"
set "base=!base:K=k!"
set "base=!base:L=l!"
set "base=!base:M=m!"
set "base=!base:N=n!"
set "base=!base:O=o!"
set "base=!base:P=p!"
set "base=!base:Q=q!"
set "base=!base:R=r!"
set "base=!base:S=s!"
set "base=!base:T=t!"
set "base=!base:U=u!"
set "base=!base:V=v!"
set "base=!base:W=w!"
set "base=!base:X=x!"
set "base=!base:Y=y!"
set "base=!base:Z=z!"

set count=1

rem Rename files (skip .bat files)
for %%F in (*) do (
    if /i not "%%~xF"==".bat" (
        rem Rename with sanitized base name and sequential number
        ren "%%F" "!base!-!count!%%~xF"
        set /a count+=1
    )
)

exit /b
