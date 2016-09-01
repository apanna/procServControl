@echo off
rem suppress warnings about using windows style paths.
set CYGWIN=nodosfilewarning
rem In case epics is built dynamic (i.e. dlls present in bin)
if exist "dllPath.bat" (
	call dllPath.bat
)
if exist "C:\Epics\extensions\bin\%EPICS_HOST_ARCH%\procServ.exe" (
	procServ --allow -n "PROCSERV-CONTROL" -p pid.txt -L log.txt --logstamp -i ^D^C 5000 ..\..\bin\%EPICS_HOST_ARCH%\procServControl.exe st.cmd
) else (
	..\..\bin\"%EPICS_HOST_ARCH%"\procServControl.exe st.cmd
)
timeout /t 5 /nobreak