:: Set working dir
cd %~dp0 & cd ..

:user_configuration

:: Static path to Flex SDK
set FLEX_SDK=D:\Data\编程\Actionscript 3.0\资料\Flex SDK\4.14.1_14_14

:: Use FD supplied SDK path if executed from FD
if exist "%FD_CUR_SDK%" set FLEX_SDK=%FD_CUR_SDK%

:validation
if not exist "%FLEX_SDK%\bin" goto flexsdk
goto succeed

:flexsdk
echo.
echo ERROR: incorrect path to Flex SDK in 'bat\SetupSDK.bat'
echo.
echo Looking for: %FLEX_SDK%\bin
echo.
if %PAUSE_ERRORS%==1 pause
exit

:succeed
set PATH=%FLEX_SDK%\bin;%PATH%
