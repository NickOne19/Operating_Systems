Setlocal EnableDelayedExpansion
@echo off
set /p direction="Enter the direction: "
echo Found works:
for /f "delims=" %%a in ('dir /b /s "C:\Users\OWNER\Desktop\testt\Lab 3 Copy\atributes\Direction\%direction%\*.lnk"') do (
set "name=%%~na"
echo !name!
for /f "delims=" %%b in ('dir /b /s "C:\Users\OWNER\Desktop\testt\Lab 3 Copy\atributes\!name!.lnk"') do (
del "%%b"
)
del /Q "C:\Users\OWNER\Desktop\testt\Lab 3 Copy\science works\!name!\*.*"
rmdir /Q "C:\Users\OWNER\Desktop\testt\Lab 3 Copy\science works\!name!"
)

for /r %%i in (.) do (
set /a count=0
for /f %%f in ('dir /b "%%i"') do (
set /a count+=1
)
if !count!==0 (
rmdir /Q "%%i"
)
)

pause