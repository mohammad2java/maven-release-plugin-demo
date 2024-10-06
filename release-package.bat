@echo off

:: Run Maven release:prepare
echo Running Maven release:prepare...
mvn release:prepare -DautoVersionSubmodules=true
if %ERRORLEVEL% NEQ 0 (
    echo Maven release:prepare failed. Exiting...
    exit /b %ERRORLEVEL%
)

:: Run Maven release:perform
echo Running Maven release:perform...
mvn release:perform
if %ERRORLEVEL% NEQ 0 (
    echo Maven release:perform failed. Exiting...
    exit /b %ERRORLEVEL%
)

echo Release process completed successfully.
